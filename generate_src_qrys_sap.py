import connection_manager
from snowflake.connector import connect
from config import snowflake_connection_properties
import os

server = '10.61.95.22'
db = 'SAP_Production'

get_src_qry = r'''
    select 0 ordinal_position, 'deleted int,' SnowFlakeCreate, null SqlServerViewCreate
    union
    select
    -- 	TABLE_NAME,
    --     ORDINAL_POSITION,
    -- 	COLUMN_NAME,
    -- 	DATA_TYPE,
    -- 	SnowFlakeDataType,
        ORDINAL_POSITION,
        '"' + COLUMN_NAME + '"' + ' ' + SnowFlakeDataType + IIF(num_columns = ordinal_position, '', ',') SnowFlakeCreate,
        ' [' + COLUMN_NAME + '] = ' + 
        case data_type
            when 'datetime' then 'convert(varchar(50), ' + TABLE_NAME + '.' + '[' + column_name + '], 21)'
            else 'quotename(' + TABLE_NAME + '.' + '[' + COLUMN_NAME + '], char(34))'
        end +  IIF(num_columns = ordinal_position, '', ',') SqlServerViewCreate
    from (
        select
            TABLE_NAME,
            ORDINAL_POSITION,
            COLUMN_NAME,
            DATA_TYPE,
            case DATA_TYPE
                when 'varchar' then 'string'
                when 'nvarchar' then 'string'
                when 'datetime' then 'datetime'
                when 'datetime2' then 'datetime'
                when 'decimal' then 'numeric'
                when 'money' then 'numeric'
                when 'numeric' then 'numeric'
                when 'bit' then 'boolean'
                when 'uniqueidentifier' then 'string'
                else DATA_TYPE
            end SnowFlakeDataType,
            max(ORDINAL_POSITION) over(partition by TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME) num_columns
    
        from INFORMATION_SCHEMA.COLUMNS col
        where
            TABLE_SCHEMA = 'dbo'
            and TABLE_NAME  = ?
    ) a
    order by ORDINAL_POSITION
'''

get_tables_qry = '''
    select TABLE_NAME
    from INFORMATION_SCHEMA.tables
    where TABLE_TYPE = 'BASE TABLE' and TABLE_SCHEMA = 'DBO'
'''

# table_data = connection_manager.execute_query(get_tables_qry, None, server, db, user= 'datapipeline', password='datareader99$')
# tables = [row['TABLE_NAME'] for row in table_data]
tables = set(['AFIH', 'AFKO', 'AFPO', 'AUFK', 'AUFM', 'AUSP', 'BKPF', 'BSAD', 'BSAK', 'BSEG_LC', 'BSID', 'BSIK', 'CABN', 'CABNT', 'CATSDB', 'COAS', 'COBK', 'COEP_LC', 'COST', 'CSKS', 'CSKT', 'EBAN', 'EKBE', 'EKET', 'EKKN', 'EKKO', 'EKPO', 'EQBS', 'EQKT', 'EQUI', 'EQUZ', 'FPLA', 'FPLT', 'HRP1000', 'HRP1001', 'IHPA', 'KLAH', 'KNA1', 'KNB1', 'KNVP', 'KNVV', 'KONDD', 'KONDDP', 'KOTD001', 'KSML', 'LFA1', 'LFB1', 'LFM1', 'LIKP', 'LIPS', 'MAKT', 'MARA', 'MARC', 'MARD', 'MBEW_LC', 'MCH1', 'MCHB', 'MKPF', 'MSEG', 'MSKA', 'OBJK', 'PA0001', 'PA0041', 'PA0105', 'PMSDO', 'PTRV_SCOS', 'PTRV_SHDR', 'PTRV_SREC', 'PURGTX_T', 'RBKP', 'RSEG', 'SER01', 'SER02', 'SER03', 'SKAT', 'T001', 'T001L', 'T001W', 'T003', 'T003O', 'T003T', 'T024', 'T151', 'T151T', 'T156', 'T156T', 'T158W', 'T161T', 'T179T', 'T527X', 'T528B', 'T528T', 'TCURX', 'TVAK', 'TVAKT', 'TVAPT', 'TVLVT', 'VBAK', 'VBAP', 'VBFA', 'VBKD', 'VBPA', 'VBREVE', 'VBRK', 'VBRP_LC', 'VEDA', 'WYT3', 'ZSMSCONTA', 'ZTT_ZONE'])
src_qrys = []
snowflake_creates = []

for table in tables:
    tmp = connection_manager.execute_query(get_src_qry, [table], server, db, user= 'datapipeline', password='datareader99$')
    src_qry = 'select'
    snowflake_create = 'create or replace table repo.sap.{table} ('.format(table=table)
    for idx, row in enumerate(tmp):
        if row['SqlServerViewCreate']:
            src_qry += '\n\t' + row['SqlServerViewCreate']
        snowflake_create += '\n\t' + row['SnowFlakeCreate']

    src_qry += '\n' + 'from {db}.dbo.{table}'.format(db=db, table=table)
    snowflake_create += '\n)'

    src_qrys.append(src_qry)
    snowflake_creates.append(snowflake_create)

path = 'src_qrys/sap/'
for table, src_qry in zip(tables, src_qrys):
    with open(path + table + '.sql', 'w') as f:
        f.write(src_qry)


# sf_conn = connect(**snowflake_connection_properties)
# for table, create_table in zip(tables, snowflake_creates):
#     if table in tables_to_create:
#         sf_conn.execute_string(create_table)