from collections import defaultdict

import connection_manager

pk_qry = '''
    with table_columns as (
        select
            schema_name(tab.schema_id) schema_name,
            tab.name                   table_name,
            col.column_id              column_id,
            col.name                   column_name,
            CONCAT(
                DATA_TYPE,
                case
                    when data_type like '%date%' or data_type like '%int%' then null
                    else concat('(', COALESCE(CHARACTER_MAXIMUM_LENGTH, NUMERIC_PRECISION, DATETIME_PRECISION, ''), IIF(NUMERIC_SCALE <> 0, CONCAT(', ', NUMERIC_SCALE), ''), ')')
                end,
                IIF(info_col.IS_NULLABLE = 'YES', ' null', ' not null')
            ) data_type,
            cast(IIF(ic.object_id is null, 0, 1) as bit) part_of_pk
        from sys.tables tab
         inner join sys.columns col
                    on tab.object_id = col.object_id
         inner join sys.indexes pk
                    on tab.object_id = pk.object_id
                        and pk.is_primary_key = 1
        left join sys.index_columns ic
                    on ic.object_id = pk.object_id
                        and ic.index_id = pk.index_id
                        and ic.column_id = col.column_id
        left join INFORMATION_SCHEMA.COLUMNS info_col
            on schema_name(tab.schema_id) = info_col.TABLE_SCHEMA
               and tab.name = info_col.TABLE_NAME
                and col.name = info_col.COLUMN_NAME
        where schema_name(tab.schema_id) = 'dbo'
    )
    select schema_name, table_name, column_id, column_name, data_type, part_of_pk
    from table_columns
    where column_name not in ('ETL_DATA_SOURCE', 'ETL_PROCESS_ID', 'ETL_LOAD_DATE')
    order by table_name, column_id
'''

server = '10.61.95.22'
source_db = 'SAP_REPO'
ct_db = 'SAP_REPO_CT'

data = connection_manager.execute_query(pk_qry, None, server, source_db, user= 'datapipeline', password='datareader99$')

table_data = defaultdict(list)

for row in data:
    table_name = row['table_name']
    column_name = row['column_name']
    data_type = row['data_type']
    part_of_pk = row['part_of_pk']
    meta = (column_name, data_type, part_of_pk)
    table_data[table_name].append(meta)

scripts = {}

for table_name, table_meta in table_data.items():
    pk_text = ''
    pk_columns = []
    hash_columns = []
    for column_name, column_meta, part_of_pk in table_meta:
        if part_of_pk:
            pk_text += '\t{column_name} {column_meta},\n'.format(column_name=column_name, column_meta=column_meta)
            pk_columns.append(column_name)
        else:
            hash_columns.append(column_name)

    create_table_script = '''
drop table if exists {ct_db}.dbo.{table};

create table {ct_db}.dbo.{table} (
{pk_text}
    touchstamp datetime not null default getdate(),
    deleted bit not null,
    hash int not null
);

alter table dbo.{table}
     	add constraint {table}_change_pk
     		primary key clustered ({primary_keys})
;
    '''.format(ct_db=ct_db, schema='change', table=table_name, pk_text=pk_text, primary_keys=','.join(pk_columns))

    # print(create_table_script)
    pk_join_condition = '\nand'.join(['\tchange.{col} = prod.{col}'.format(col=col) for col in pk_columns])
    pk_column_text = ', '.join(['prod.{column}'.format(column=col) for col in pk_columns])
    hash_columns = ', '.join(['"{col}"'.format(col=col) for col in hash_columns])
    update_hashes_script = '''
create or alter procedure dbo.Calculate_{table}_Changes as
merge into {ct_db}.dbo.{table} change
using (select *, checksum({hash_columns}) prod_hash from {source_db}.dbo.{table}) prod
on
{pk_join_condition}
when not matched by target then insert values ({pk_list_text}, GetDate(), 0, prod.prod_hash)
when not matched by source then update
    set
        touchstamp = GetDate(),
        deleted = 1
when matched and change.hash != prod.prod_hash or change.hash is null then update
    set
        change.touchstamp = GetDate(),
        change.hash = prod.prod_hash,
        change.deleted = 0
;
    '''.format(source_db=source_db, ct_db=ct_db, table=table_name, pk_join_condition= pk_join_condition, pk_list_text=pk_column_text, hash_columns= hash_columns)
    print(update_hashes_script)
    # connection_manager.execute_query(create_table_script, None, server, ct_db, user='datapipeline', password='datareader99$', results=False)
    connection_manager.execute_query(update_hashes_script, None, server, ct_db, user='datapipeline', password='datareader99$', results=False)
    print('\n\n\n\n')

### sample
'''
merge into SAP_Production.change.T024_changes change
using (select *, checksum(EKNAM, EKTEL, LDEST, TELFX, TEL_NUMBER, TEL_EXTENS, SMTP_ADDR) prod_hash from SAP_Production.dbo.T024) prod
on
	change.MANDT = prod.MANDT
	and	change.EKGRP = prod.EKGRP
when not matched by target then insert values (prod.MANDT, prod.EKGRP, GetDate(), prod.prod_hash)
when not matched by source then update
    set
        update_date = GetDate(),
        change.hash = null
when matched and change.hash != prod.prod_hash then update
    set
        change.update_date = GetDate(),
        change.hash = prod.prod_hash
;
'''
