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

tables = set(['AFKO', 'LFM1', 'MSKA', 'CSKS', 'OBJK', 'TCURX', 'T156', 'VBAP', 'LFA1', 'BKPF', 'EKPO', 'PA0105', 'TVAPT', 'KNA1', 'MBEW_LC', 'EBAN', 'BSEG_LC', 'T001W', 'PTRV_SHDR', 'CSKT', 'LIPS', 'COBK', 'ZTT_ZONE', 'AUSP', 'PMSDO', 'BSAK', 'T003O', 'T024', 'COAS', 'RSEG', 'RBKP', 'T151', 'VBKD', 'T527X', 'SKAT', 'T528T', 'MCH1', 'T158W', 'T528B', 'VBFA', 'BSID', 'TVAK', 'EQKT', 'MCHB', 'KONDDP', 'PTRV_SREC', 'SER01', 'T179T', 'KONDD', 'VBRP_LC', 'COEP_LC', 'COST', 'SER03', 'VBREVE', 'SER02', 'PA0001', 'KOTD001', 'MARA', 'MAKT', 'T156T', 'WYT3', 'MARC', 'VBPA', 'EKBE', 'ZSMSCONTA', 'CATSDB', 'T161T', 'MARD', 'IHPA', 'BSIK', 'VBRK', 'MKPF', 'T003T', 'EQUI', 'EKKO', 'TVAKT', 'T001', 'EKKN', 'BSAD', 'HRP1001', 'PURGTX_T', 'AFPO', 'AUFK', 'KNVP', 'T003', 'HRP1000', 'PTRV_SCOS', 'AFIH', 'PA0041', 'VBAK', 'LFB1', 'VEDA', 'LIKP', 'KNB1', 'EKET', 'KLAH', 'FPLA', 'CABNT', 'T001L', 'TVLVT', 'AUFM', 'MSEG', 'KNVV', 'FPLT', 'T151T', 'CABN', 'EQBS', 'EQUZ', 'KSML'])

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
            pk_text += '\t{column_name} {column_meta} primary key,\n'.format(column_name=column_name, column_meta=column_meta)
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

    '''.format(db=db, schema='change', table=table_name, pk_text=pk_text)
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
when matched and change.hash != prod.prod_hash then update
    set
        change.update_date = GetDate(),
        change.hash = prod.prod_hash
;
    '''.format(db=db, table=table_name, pk_join_condition= pk_join_condition, pk_list_text=pk_column_text, hash_columns= hash_columns)
    print(update_hashes_script)
    # connection_manager.execute_query(create_table_script, None, server, db, user='datapipeline', password='datareader99$', results=False)
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