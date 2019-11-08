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
db = 'SAP_Production'

# tables = set(['AFIH', 'AFKO', 'AFPO', 'AUFK', 'AUFM', 'AUSP', 'BKPF', 'BSAD', 'BSAK', 'BSEG_LC', 'BSID', 'BSIK', 'CABN', 'CABNT', 'CATSDB', 'COAS', 'COBK', 'COEP_LC', 'COST', 'CSKS', 'CSKT', 'EBAN', 'EKBE', 'EKET', 'EKKN', 'EKKO', 'EKPO', 'EQBS', 'EQKT', 'EQUI', 'EQUZ', 'FPLA', 'FPLT', 'HRP1000', 'HRP1001', 'IHPA', 'KLAH', 'KNA1', 'KNB1', 'KNVP', 'KNVV', 'KONDD', 'KONDDP', 'KOTD001', 'KSML', 'LFA1', 'LFB1', 'LFM1', 'LIKP', 'LIPS', 'MAKT', 'MARA', 'MARC', 'MARD', 'MBEW_LC', 'MCH1', 'MCHB', 'MKPF', 'MSEG', 'MSKA', 'OBJK', 'PA0001', 'PA0041', 'PA0105', 'PMSDO', 'PTRV_SCOS', 'PTRV_SHDR', 'PTRV_SREC', 'PURGTX_T', 'RBKP', 'RSEG', 'SER01', 'SER02', 'SER03', 'SKAT', 'T001', 'T001L', 'T001W', 'T003', 'T003O', 'T003T', 'T024', 'T151', 'T151T', 'T156', 'T156T', 'T158W', 'T161T', 'T179T', 'T527X', 'T528B', 'T528T', 'TCURX', 'TVAK', 'TVAKT', 'TVAPT', 'TVLVT', 'VBAK', 'VBAP', 'VBFA', 'VBKD', 'VBPA', 'VBREVE', 'VBRK', 'VBRP_LC', 'VEDA', 'WYT3', 'ZSMSCONTA', 'ZTT_ZONE', 'T002T', 'ADRC'])
tables = set(['EQUZ'])

data = connection_manager.execute_query(pk_qry, None, server, db, user= 'datapipeline', password='datareader99$')

table_data = defaultdict(list)

for row in data:
    table_name = row['table_name']
    column_name = row['column_name']
    data_type = row['data_type']
    part_of_pk = row['part_of_pk']
    meta = (column_name, data_type, part_of_pk)
    if table_name not in tables:
        continue
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
drop table if exists {db}.change.{table}_changes;

create table {db}.change.{table}_changes (
{pk_text}
    update_date datetime not null default getdate(),
    hash int not null
);

alter table change.{table}_changes
     	add constraint {table}_change_pk
     		primary key clustered ({primary_keys})
;
    '''.format(db=db, schema='change', table=table_name, pk_text=pk_text, primary_keys=','.join(pk_columns))

    print(create_table_script)
    pk_join_condition = '\nand'.join(['\tchange.{col} = prod.{col}'.format(col=col) for col in pk_columns])
    pk_column_text = ', '.join(['prod.{column}'.format(column=col) for col in pk_columns])
    hash_columns = ', '.join(['"{col}"'.format(col=col) for col in hash_columns])
    update_hashes_script = '''
create or alter procedure change.Calculate_{table}_Changes as
merge into {db}.change.{table}_changes change
using (select *, checksum({hash_columns}) prod_hash from {db}.dbo.{table}) prod
on
{pk_join_condition}
when not matched by target then insert values ({pk_list_text}, GetDate(), prod.prod_hash)
when not matched by source then update
    set
        update_date = GetDate(),
        change.hash = null
when matched and change.hash != prod.prod_hash or change.hash is null then update
    set
        change.update_date = GetDate(),
        change.hash = prod.prod_hash
;
    '''.format(db=db, table=table_name, pk_join_condition= pk_join_condition, pk_list_text=pk_column_text, hash_columns= hash_columns)
    print(update_hashes_script)
    connection_manager.execute_query(create_table_script, None, server, db, user='datapipeline', password='datareader99$', results=False)
    connection_manager.execute_query(update_hashes_script, None, server, db, user='datapipeline', password='datareader99$', results=False)
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