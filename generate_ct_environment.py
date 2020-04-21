from collections import defaultdict

import config
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
    order by table_name, column_id
'''

server = '10.61.95.22'
db = 'SAP_REPO'
user, password = config.sql_server_login_map[server]

data = connection_manager.execute_query(pk_qry, None, server, db, user=user, password=password)

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
drop table if exists {db}.ct.{table};

create table {db}.ct.{table} (
{pk_text}
    touchstamp datetime not null default getdate(),
    deleted bit not null default 0
);

alter table ct.{table}
     	add constraint {table}_pk
     		primary key clustered ({primary_keys})
;
    '''.format(db=db, table=table_name, pk_text=pk_text, primary_keys=','.join(pk_columns))

    initialize_table_script = '''
insert into ct.{table} ({primary_keys})
select {primary_keys}
from dbo.{table}
;
    '''.format(db=db, table=table_name, pk_text=pk_text, primary_keys=','.join(pk_columns))

    pk_join_condition = '\n\tand'.join(['\tsrc.{col} = tgt.{col}'.format(col=col) for col in pk_columns])
    pk_column_text = ', '.join(['{column}'.format(column=col) for col in pk_columns])
    hash_columns = ', '.join(['"{col}"'.format(col=col) for col in hash_columns])
    update_hashes_script = '''
create or alter trigger dbo.Calculate_{table}_Changes on dbo.{table}
after insert, update, delete as
begin
    
    merge into {db}.ct.{table} as tgt
    using inserted as src
        on {pk_join_condition}
    
        when matched then update
            set tgt.touchstamp = getdate()
        when not matched then insert
          ({pk_list_text}, touchstamp)
          values ({pk_list_text}, getdate());
    
    with src as (
      select *
      from deleted
      except
      select *
      from inserted
    )
    merge into ct.{table} as tgt
    using src as src
       on {pk_join_condition}
    when matched then update
        set tgt.deleted = 1,
            tgt.touchstamp = getdate();
end
;
    '''.format(db=db, table=table_name, pk_join_condition= pk_join_condition, pk_list_text=pk_column_text, hash_columns= hash_columns)
    print(create_table_script)
    connection_manager.execute_query(create_table_script, None, server, db, user='datapipeline', password='datareader99$', results=False)

    print(initialize_table_script)
    connection_manager.execute_query(initialize_table_script, None, server, db, user='datapipeline', password='datareader99$', results=False)

    print(update_hashes_script)
    connection_manager.execute_query(update_hashes_script, None, server, db, user='datapipeline', password='datareader99$', results=False)
    print('Table {table} completed.'.format(table=table_name))
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