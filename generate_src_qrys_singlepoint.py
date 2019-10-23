import connection_manager
from snowflake.connector import connect
from config import snowflake_connection_properties
import os

server = 'c18n3588.c18n.c.vtscloud.io'
source = 'singlepoint'


get_src_qry = r'''
    select 0 ordinal_position, 'deleted int,' SnowFlakeCreate, null SqlServerViewCreate
    union
    select
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
            ORDINAL_POSITION,
            COLUMN_NAME,
            DATA_TYPE,
            case DATA_TYPE
                when 'varchar' then 'string'
                when 'nvarchar' then 'string'
                when 'datetime' then 'datetime'
                when 'datetime2' then 'datetime'
                when 'smalldatetime' then 'datetime'
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
            and exists(
                select 1 from (
                    select
                        object_schema_name(tables.source_object_id) schema_name,
                        object_name(tables.source_object_id) table_name,
                        column_name,
                        column_id,
                        column_ordinal
                    from cdc.captured_columns columns
                    join cdc.change_tables tables on columns.object_id = tables.object_id
                ) a
                where col.TABLE_SCHEMA = a.schema_name and col.TABLE_NAME = a.table_name and col.COLUMN_NAME = a.column_name
                )
    ) a
    order by ORDINAL_POSITION
'''

get_tables_qry = '''
    select TABLE_NAME
    from INFORMATION_SCHEMA.tables
    where TABLE_TYPE = 'BASE TABLE' and TABLE_SCHEMA = 'DBO'
'''


src_qrys = []
snowflake_creates = []

dbs = ['SinglePoint', 'Ticketing', 'ProductManagement']

tables_to_create = os.listdir('src_qrys/{source}/'.format(source=source))
tables_to_create = set([table.replace('.sql', '') for table in tables_to_create])

for db in dbs:
    table_data = connection_manager.execute_query(get_tables_qry, None, server, db)
    tables = [row['TABLE_NAME'] for row in table_data]



    for table in tables:
        fq_table_name = '{db}.dbo.{table}'.format(db=db, table=table)
        if fq_table_name in tables_to_create:
            tmp = connection_manager.execute_query(get_src_qry, [table], server, db)
            src_qry = 'select'
            snowflake_create = 'create or replace table repo.{source}."{db}.{schema}.{table}" ('.format(source=source,db=db,schema='dbo', table=table)
            if len(tmp) == 1:
                continue
            for idx, row in enumerate(tmp):
                if row['SqlServerViewCreate']:
                    src_qry += '\n\t' + row['SqlServerViewCreate']
                snowflake_create += '\n\t' + row['SnowFlakeCreate']

            src_qry += '\n' + 'from {db}.dbo.{table}'.format(db=db, table=table)
            snowflake_create += '\n)'

            src_qrys.append(src_qry)
            snowflake_creates.append(snowflake_create)

    # path = 'src_qrys/{source}/'.format(source=source)
    # for table, src_qry in zip(tables, src_qrys):
    #     file_name = '{db}.dbo.{table}.sql'.format(db=db, table=table)
    #     with open(path + file_name, 'w') as f:
    #         f.write(src_qry)


    sf_conn = connect(**snowflake_connection_properties)
    for create_table in snowflake_creates:
        sf_conn.execute_string(create_table)