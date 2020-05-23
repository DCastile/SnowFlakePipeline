import connection_manager
from snowflake.connector import connect
from config import snowflake_connection_properties
import os

server = '10.61.95.22'
db = 'SAP_REPO'
import connection_manager
from snowflake.connector import connect
from config import snowflake_connection_properties, sql_server_login_map


# server = 'c18n3588.c18n.c.vtscloud.io' #dev
source = 'sap'

user = sql_server_login_map[server][0]
password = sql_server_login_map[server][1]


get_src_qry = r'''
    select
        TABLE_NAME,
        ORDINAL_POSITION,
        COLUMN_NAME,
        DATA_TYPE,
        SnowFlakeDataType,
        num_columns,
        '"' + COLUMN_NAME + '"' + ' ' + SnowFlakeDataType + IIF(num_columns = ordinal_position, '', ',') SnowFlakeCreate,
        ' [' + COLUMN_NAME + '] = ' + '' +
        case
            when data_type in ('datetime', 'date', 'time', 'datetime2', 'smalldatetime') then 'convert(varchar(50), [' + TABLE_NAME + '].' + '[' + column_name + '], 21)'
            when data_type in ('int', 'smallint', 'tinyint', 'money', 'numeric', 'decimal', 'float', 'bit') then 'cast([' + TABLE_NAME + '].' + '[' + column_name + '] as varchar(36))'
            when data_type in ('uniqueidentifier') then 'cast([' + TABLE_NAME + '].' + '[' + column_name + '] as varchar(36))'
            else 'concat(char(34), replace(cast([' + TABLE_NAME + '].[' + COLUMN_NAME + '] as nvarchar(' + character_maximum_length + ')), char(34), char(0)), char(34))'
        end +  IIF(num_columns = ordinal_position, '', ',') SqlServerViewCreate
    from (
        select
            col.TABLE_NAME,
            col.ORDINAL_POSITION,
            col.COLUMN_NAME,
            col.DATA_TYPE,
            iif(col.character_maximum_length = -1, 'max', cast(col.character_maximum_length as varchar(10))) character_maximum_length,
            case DATA_TYPE
                when 'varchar' then 'text'
                when 'nvarchar' then 'text'
                when 'datetime' then 'datetime'
                when 'datetime2' then 'datetime'
                when 'smalldatetime' then 'datetime'
                when 'decimal' then 'number(' + cast(NUMERIC_PRECISION as varchar) + ',' + cast(NUMERIC_SCALE as varchar) + ')'
                when 'money' then 'number(' + cast(NUMERIC_PRECISION as varchar) + ',' + cast(NUMERIC_SCALE as varchar) + ')'
                when 'numeric' then 'number(' + cast(NUMERIC_PRECISION as varchar) + ',' + cast(NUMERIC_SCALE as varchar) + ')'
                when 'bit' then 'boolean'
                when 'uniqueidentifier' then 'text'
                else DATA_TYPE
            end SnowFlakeDataType,
            max(ORDINAL_POSITION) over(partition by col.TABLE_CATALOG, col.TABLE_SCHEMA, col.TABLE_NAME) num_columns

        from INFORMATION_SCHEMA.COLUMNS col
        join INFORMATION_SCHEMA.tables tab on col.TABLE_SCHEMA = tab.TABLE_SCHEMA and col.TABLE_NAME = tab.TABLE_NAME
        where
            tab.TABLE_TYPE = 'BASE TABLE'
            and col.DATA_TYPE not in ('binary', 'image', 'geography', 'varbinary', 'text')
            and col.TABLE_SCHEMA = 'dbo'
            and col.TABLE_NAME = ?
--             and col.TABLE_NAME = 'tqoQuoteLine'
    ) a
    order by table_name, ORDINAL_POSITION
'''

get_tables_qry = '''
    select TABLE_NAME
    from INFORMATION_SCHEMA.tables
    where TABLE_TYPE = 'BASE TABLE' and TABLE_SCHEMA = 'DBO'
'''


src_qrys = []
snowflake_creates = []

tables_to_create = set(['MCHB', 'MKPF', 'MSEG', 'MSKA', 'OBJK', 'PA0001', 'PA0041', 'PA0105', 'PMSDO', 'INOB', 'PTRV_SCOS', 'KSSK', 'PTRV_SHDR', 'PTRV_SREC', 'PURGTX_T', 'ADRC', 'RBKP', 'AFIH', 'RSEG', 'AFKO', 'VBREVE', 'SER01', 'AFPO', 'SER02', 'AUFK', 'SER03', 'AUFM', 'SKAT', 'AUSP', 'ADR6', 'T001', 'BKPF', 'T001L', 'BSAD', 'T001W', 'BSAK', 'T003', 'BSEG', 'T003O', 'BSID', 'T003T', 'BSIK', 'T024', 'CABN', 'T151', 'CABNT', 'CE110US', 'T151T', 'CATSDB', 'T156', 'COBK', 'T156T', 'COEP', 'T158W', 'COST', 'T161T', 'CSKS', 'T179T', 'CSKT', 'T527X', 'EBAN', 'T528B', 'EKBE', 'T528T', 'EKET', 'TCURX', 'EKKN', 'TVAK', 'EKKO', 'TVAKT', 'EKPO', 'TVAPT', 'EQBS', 'TVLVT', 'EQKT', 'VBAK', 'EQUI', 'VBAP', 'FPLA', 'VBFA', 'FPLT', 'VBKD', 'HRP1000', 'VBPA', 'HRP1001', 'IHPA', 'VBRK', 'KLAH', 'VBRP', 'KNA1', 'VEDA', 'KNB1', 'WYT3', 'KNVP', 'ZSMSCONTA', 'KNVV', 'ZTT_ZONE', 'KONDD', 'KONDDP', 'KOTD001', 'KSML', 'LFA1', 'LFB1', 'LFM1', 'LIKP', 'LIPS', 'MAKT', 'MARA', 'MARC', 'MARD', 'MBEW', 'MCH1'])
table_names = []

table_data = connection_manager.execute_query(get_tables_qry, None, server, db, user=user, password=password)
# tables = [row['TABLE_NAME'] for row in table_data if '{db}.dbo.{table}'.format(db=db, table=row['TABLE_NAME']) in tables_to_create]
tables = [row['TABLE_NAME'] for row in table_data]

for table in tables:
    if table in tables_to_create:
        tmp = connection_manager.execute_query(get_src_qry, [table], server, db, user=user, password=password)
        src_qry = 'select'
        snowflake_create = 'create or replace table repo.{source}.{table} (\n'.format(source=source,db=db,schema='dbo', table=table)
        if len(tmp) <= 1:
            print('Error on:', table, '- no columns under cdc')
            continue
        snowflake_create += '\tdeleted boolean, touchstamp timestamp default current_timestamp,'
        for idx, row in enumerate(tmp):
            src_qry += '\n\t' + row['SqlServerViewCreate']
            snowflake_create += '\n\t' + row['SnowFlakeCreate']

        src_qry += '\n' + 'from {db}.dbo.{table} with(nolock)'.format(db=db, table=table)
        snowflake_create += '\n)'

        table_names.append(table)
        src_qrys.append(src_qry)
        snowflake_creates.append(snowflake_create)


path = 'src_qrys/{source}/'.format(source=source)
for table, src_qry in zip(table_names, src_qrys):
    file_name = '{table}.sql'.format(table=table)
    with open(path + file_name, 'w') as f:
        f.write(src_qry)


sf_conn = connect(**snowflake_connection_properties)
for table, create_table in zip(table_names, snowflake_creates):
    try:
        # sf_conn.execute_string(create_table)
        print(create_table)
    except Exception as e:
        print('Error creating', table, 'in snowflake')
        print(e)

