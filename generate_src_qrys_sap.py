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
        ' [' + COLUMN_NAME + '] = ' + 'isNull(' +
        case data_type
            when 'datetime' then 'convert(varchar(50), [' + column_name + '], 21)'
            else 'quotename([' + COLUMN_NAME + '], char(34))'
        end + ', ''\N'')' +  IIF(num_columns = ordinal_position, '', ',') SqlServerViewCreate
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

table_data = connection_manager.execute_query(get_tables_qry, None, server, db)
tables = [row['TABLE_NAME'] for row in table_data]
src_qrys = []
snowflake_creates = []

for table in tables:
    tmp = connection_manager.execute_query(get_src_qry, [table], server, db)
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

# path = 'src_qrys/sap/'
# for table, src_qry in zip(tables, src_qrys):
#     with open(path + table + '.sql', 'w') as f:
#         f.write(src_qry)

tables_to_create = os.listdir('src_qrys/sap/')
tables_to_create = set([table.replace('.sql', '') for table in tables_to_create])
sf_conn = connect(**snowflake_connection_properties)
for table, create_table in zip(tables, snowflake_creates):
    if table in tables_to_create:
        sf_conn.execute_string(create_table)