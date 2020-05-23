import connection_manager
from snowflake.connector import connect
from config import snowflake_connection_properties, sql_server_login_map


# server = 'c18n3588.c18n.c.vtscloud.io' #dev
server = '10.61.95.15' #prod
source = 'singlepoint'

user = sql_server_login_map[server][0]
password = sql_server_login_map[server][1]


get_src_qry = r'''
    with cdc as (
            select
                object_schema_name(tables.source_object_id) schema_name,
                object_name(tables.source_object_id) table_name,
                column_name,
                column_id,
                column_ordinal
            from cdc.captured_columns columns
            join cdc.change_tables tables on columns.object_id = tables.object_id
    )
    select
        TABLE_NAME,
        ORDINAL_POSITION,
        COLUMN_NAME,
        DATA_TYPE,
        SnowFlakeDataType,
        num_columns,
        CdcEnabled,
        '"' + COLUMN_NAME + '"' + ' ' + SnowFlakeDataType + IIF(num_columns = ordinal_position, '', ',') SnowFlakeCreate,
        ' [' + COLUMN_NAME + '] = ' + '' +
        case
            when data_type in ('datetime', 'date', 'time', 'datetime2', 'smalldatetime') then 'isNull(convert(varchar(50), [' + TABLE_NAME + '].' + '[' + column_name + '], 21), ''\N'')'
            when data_type in ('int', 'smallint', 'tinyint', 'money', 'numeric', 'decimal', 'float', 'bit') then 'isNull(cast([' + TABLE_NAME + '].' + '[' + column_name + '] as varchar(36)), ''\N'')'
            when data_type in ('uniqueidentifier') then 'isNull(cast([' + TABLE_NAME + '].' + '[' + column_name + '] as varchar(36)), ''\N'')'
            else 'concat(char(34), isNull(replace(cast([' + TABLE_NAME + '].[' + COLUMN_NAME + '] as nvarchar(' + character_maximum_length + ')), char(34), char(0)), ''\N''), char(34))'
        end +  IIF(num_columns = ordinal_position, '', ',') SqlServerViewCreate
    from (
        select
            col.TABLE_NAME,
            col.ORDINAL_POSITION,
            col.COLUMN_NAME,
            col.DATA_TYPE,
            iif(col.character_maximum_length = -1, 'max', cast(col.character_maximum_length as varchar(10))) character_maximum_length,
            case DATA_TYPE
                when 'varchar' then 'string'
                when 'nvarchar' then 'string'
                when 'datetime' then 'datetime'
                when 'datetime2' then 'datetime'
                when 'smalldatetime' then 'datetime'
                when 'decimal' then 'numeric(' + cast(NUMERIC_PRECISION as varchar) + ',' + cast(NUMERIC_SCALE as varchar) + ')'
                when 'money' then 'numeric(' + cast(NUMERIC_PRECISION as varchar) + ',' + cast(NUMERIC_SCALE as varchar) + ')'
                when 'numeric' then 'numeric(' + cast(NUMERIC_PRECISION as varchar) + ',' + cast(NUMERIC_SCALE as varchar) + ')'
                when 'bit' then 'boolean'
                when 'uniqueidentifier' then 'string'
                else DATA_TYPE
            end SnowFlakeDataType,
            max(ORDINAL_POSITION) over(partition by col.TABLE_CATALOG, col.TABLE_SCHEMA, col.TABLE_NAME) num_columns,
            IIF(a.column_id is null, 0, 1) CdcEnabled

        from INFORMATION_SCHEMA.COLUMNS col
        join INFORMATION_SCHEMA.tables tab on col.TABLE_SCHEMA = tab.TABLE_SCHEMA and col.TABLE_NAME = tab.TABLE_NAME
        left join cdc a on col.TABLE_SCHEMA = a.schema_name and col.TABLE_NAME = a.table_name and col.COLUMN_NAME = a.column_name
        where
            tab.TABLE_TYPE = 'BASE TABLE'
            and col.DATA_TYPE not in ('binary', 'image', 'geography', 'varbinary', 'text')
            and a.column_id is not null -- cdc must be enabled (sort kinda we can change this later on)
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

dbs = ['SinglePoint', 'Ticketing', 'ProductManagement']
# tables_to_create = set(['ProductManagement.dbo.PriceList', 'ProductManagement.dbo.PriceListDetail', 'SinglePoint.dbo.Activity_ExtendedData', 'SinglePoint.dbo.AddressDetails', 'SinglePoint.dbo.Addresses', 'SinglePoint.dbo.AssetConfigs', 'SinglePoint.dbo.AssetHeaders', 'SinglePoint.dbo.AssetHeaders_RemoteMonitoring', 'SinglePoint.dbo.AssetLocation', 'SinglePoint.dbo.AssetTypes', 'SinglePoint.dbo.CallHomeProviders', 'SinglePoint.dbo.Contacts', 'SinglePoint.dbo.ContractBillCycles', 'SinglePoint.dbo.ContractChgRequests', 'SinglePoint.dbo.ContractHeaders', 'SinglePoint.dbo.ContractLines', 'SinglePoint.dbo.Coordinates', 'SinglePoint.dbo.CountryCodes', 'SinglePoint.dbo.CountryMultipliers', 'SinglePoint.dbo.CountryRegions', 'SinglePoint.dbo.Country_Categories', 'SinglePoint.dbo.Country_Groups', 'SinglePoint.dbo.Country_Mapping', 'SinglePoint.dbo.Currency_PriceList_Xref', 'SinglePoint.dbo.Customer_BillingProfile', 'SinglePoint.dbo.Customer_PartiesInvolved', 'SinglePoint.dbo.Customers', 'SinglePoint.dbo.Customers_Users_XREF', 'SinglePoint.dbo.Departments', 'SinglePoint.dbo.Groups', 'SinglePoint.dbo.IncAppointments', 'SinglePoint.dbo.IncDispatch', 'SinglePoint.dbo.IncPriority', 'SinglePoint.dbo.IncServiceOrders', 'SinglePoint.dbo.IncWorkstream', 'SinglePoint.dbo.IncWorkstreamSla', 'SinglePoint.dbo.IncidentDates', 'SinglePoint.dbo.IncidentDatesDeferals', 'SinglePoint.dbo.Incidents', 'SinglePoint.dbo.MethodOfContact', 'SinglePoint.dbo.MfgCodes', 'SinglePoint.dbo.NotesGeneric', 'SinglePoint.dbo.OrgChart', 'SinglePoint.dbo.OrgChart_ReportingTypes', 'SinglePoint.dbo.PartiesInvolved', 'SinglePoint.dbo.PurchaseOrders', 'SinglePoint.dbo.PurchaseRequisition', 'SinglePoint.dbo.PurchaseRequisition_Lines', 'SinglePoint.dbo.PurchaseRequisition_UrgencyCodes', 'SinglePoint.dbo.SLATerms', 'SinglePoint.dbo.SalesReps', 'SinglePoint.dbo.SalesReps_ContractHeaders_Xref', 'SinglePoint.dbo.SiteAudits', 'SinglePoint.dbo.SroHeader', 'SinglePoint.dbo.SroTypes', 'SinglePoint.dbo.StatusCodes', 'SinglePoint.dbo.TimeZones', 'SinglePoint.dbo.UserRoles', 'SinglePoint.dbo.User_UserRoles_XREF', 'SinglePoint.dbo.Users', 'SinglePoint.dbo.WarehouseDetails', 'SinglePoint.dbo.Warehouse_FSL', 'SinglePoint.dbo.Warehouse_FieldEngineers', 'SinglePoint.dbo.Warehouse_Shift_Users', 'SinglePoint.dbo.Warehouse_Shifts', 'SinglePoint.dbo.Warehouses', 'SinglePoint.dbo.incCodes', 'SinglePoint.dbo.incEvents', 'SinglePoint.dbo.incReasons', 'SinglePoint.dbo.tqoBOM', 'SinglePoint.dbo.tqoCompany', 'SinglePoint.dbo.tqoItem', 'SinglePoint.dbo.tqoQuote', 'SinglePoint.dbo.tqoQuoteHeader', 'SinglePoint.dbo.tqoQuoteLine', 'SinglePoint.dbo.tqoQuoteStatusHistory', 'SinglePoint.dbo.tqoQuoteTypes', 'SinglePoint.dbo.tqoQuote_ClearView_Extended_Import', 'SinglePoint.dbo.tqoRateSLA', 'SinglePoint.dbo.tqoSrvDealers', 'SinglePoint.dbo.tqoSync', 'SinglePoint.dbo.tqoUnit', 'Ticketing.dbo.Incident_Metric_Details', 'Ticketing.dbo.Incident_PendingCustomerResponse', 'Ticketing.dbo.Incident_RemoteHands_Details', 'Ticketing.dbo.Incident_SLA', 'Ticketing.dbo.Incident_SLA_ServiceProfiles', 'Ticketing.dbo.Incident_ServiceOrder_Header', 'Ticketing.dbo.Incident_ServiceOrder_Parts_Needed', 'Ticketing.dbo.Incident_ServiceOrder_Parts_Reservations', 'Ticketing.dbo.Queue_Incidents', 'Ticketing.dbo.Queue_Users', 'Ticketing.dbo.Queue_Warehouse_Incidents', 'Ticketing.dbo.REM_Alerts', 'Ticketing.dbo.REM_Events'])
tables_to_create = set(['Ticketing.dbo.REM_Alerts', 'Ticketing.dbo.Incident_ServiceOrder_Header', 'Ticketing.dbo.REM_Events', 'SinglePoint.dbo.CountryCodes', 'SinglePoint.dbo.IncServiceOrders', 'SinglePoint.dbo.PurchaseRequisition_Lines'])
table_names = []

for db in dbs:
    table_data = connection_manager.execute_query(get_tables_qry, None, server, db, user=user, password=password)
    tables = [row['TABLE_NAME'] for row in table_data if '{db}.dbo.{table}'.format(db=db, table=row['TABLE_NAME']) in tables_to_create]

    for table in tables:
        fq_table_name = '{db}.dbo.{table}'.format(db=db, table=table)
        # if fq_table_name in tables_to_create:
        if True:
            tmp = connection_manager.execute_query(get_src_qry, [table], server, db, user=user, password=password)
            src_qry = 'select'
            snowflake_create = 'create or replace table repo.{source}."{db}.{schema}.{table}" (\n'.format(source=source,db=db,schema='dbo', table=table)
            if len(tmp) <= 1:
                print('Error on:', fq_table_name, '- no columns under cdc')
                continue
            snowflake_create += '\tdeleted boolean, touchstamp timestamp default current_timestamp,'
            for idx, row in enumerate(tmp):
                src_qry += '\n\t' + row['SqlServerViewCreate']
                snowflake_create += '\n\t' + row['SnowFlakeCreate']

            src_qry += '\n' + 'from {db}.dbo.{table}'.format(db=db, table=table)
            snowflake_create += '\n)'

            table_names.append(fq_table_name)
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
            sf_conn.execute_string(create_table)
        except Exception as e:
            print('Error creating', table, 'in snowflake')
            print(e)

