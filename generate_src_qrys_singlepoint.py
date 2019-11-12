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
        ' [' + COLUMN_NAME + '] = ' +
        case SNOWFLAKEDATATYPE
            when 'datetime' then 'convert(varchar(50), [' + TABLE_NAME + '].' + '[' + column_name + '], 21)'
            else 'quotename([' + TABLE_NAME + '].' + '[' + COLUMN_NAME + '], char(34))'
        end +  IIF(num_columns = ordinal_position, '', ',') SqlServerViewCreate
    from (
        select
            col.TABLE_NAME,
            col.ORDINAL_POSITION,
            col.COLUMN_NAME,
            col.DATA_TYPE,
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
    ) a
'''

get_tables_qry = '''
    select TABLE_NAME
    from INFORMATION_SCHEMA.tables
    where TABLE_TYPE = 'BASE TABLE' and TABLE_SCHEMA = 'DBO'
'''


src_qrys = []
snowflake_creates = []

dbs = ['SinglePoint', 'Ticketing', 'ProductManagement']
tables_to_create = set(['SinglePoint.dbo.Departments', 'SinglePoint.dbo.tqoQuoteTypes', 'SinglePoint.dbo.SiteAudits', 'SinglePoint.dbo.ContractChgRequests', 'SinglePoint.dbo.IncidentDates', 'SinglePoint.dbo.IncDispatch', 'SinglePoint.dbo.Customer_BillingProfile', 'SinglePoint.dbo.incReasons', 'SinglePoint.dbo.TimeZones', 'SinglePoint.dbo.tqoCompany', 'SinglePoint.dbo.Country_Categories', 'SinglePoint.dbo.SLATerms', 'SinglePoint.dbo.CountryMultipliers', 'SinglePoint.dbo.Warehouses', 'SinglePoint.dbo.tqoRateSLA', 'SinglePoint.dbo.tqoSync', 'SinglePoint.dbo.Warehouse_Shifts', 'SinglePoint.dbo.Incidents', 'SinglePoint.dbo.Warehouse_Shift_Users', 'Ticketing.dbo.Incident_PendingCustomerResponse', 'SinglePoint.dbo.NotesGeneric', 'ProductManagement.dbo.PriceList', 'ProductManagement.dbo.PriceListDetail', 'SinglePoint.dbo.Groups', 'SinglePoint.dbo.AssetConfigs', 'SinglePoint.dbo.UserRoles', 'SinglePoint.dbo.User_UserRoles_XREF', 'Ticketing.dbo.Incident_SLA_ServiceProfiles', 'SinglePoint.dbo.CallHomeProviders', 'SinglePoint.dbo.AddressDetails', 'Ticketing.dbo.Incident_RemoteHands_Details', 'SinglePoint.dbo.MfgCodes', 'SinglePoint.dbo.Customers_Users_XREF', 'SinglePoint.dbo.PurchaseRequisition_Lines', 'SinglePoint.dbo.Contacts', 'SinglePoint.dbo.PurchaseRequisition', 'SinglePoint.dbo.PurchaseRequisition_UrgencyCodes', 'SinglePoint.dbo.SalesReps_ContractHeaders_Xref', 'SinglePoint.dbo.Coordinates', 'SinglePoint.dbo.AssetHeaders_UnitSwap_Log', 'SinglePoint.dbo.IncPriority', 'SinglePoint.dbo.IncWorkstream', 'SinglePoint.dbo.IncAppointments', 'SinglePoint.dbo.IncWorkstreamSla', 'SinglePoint.dbo.StatusCodes', 'SinglePoint.dbo.tqoQuote_ClearView_Extended_Import', 'SinglePoint.dbo.ContractBillCycles', 'SinglePoint.dbo.Customer_PartiesInvolved', 'SinglePoint.dbo.AssetLocation', 'SinglePoint.dbo.AssetTypes', 'SinglePoint.dbo.OrgChart', 'SinglePoint.dbo.tqoQuoteStatusHistory', 'SinglePoint.dbo.PartiesInvolved', 'SinglePoint.dbo.Contract_Type', 'SinglePoint.dbo.Users', 'Ticketing.dbo.Incident_SLA', 'SinglePoint.dbo.SalesReps', 'SinglePoint.dbo.tqoBOM', 'SinglePoint.dbo.tqoUnit', 'SinglePoint.dbo.Customers', 'SinglePoint.dbo.IncServiceOrders', 'SinglePoint.dbo.PurchaseOrders', 'SinglePoint.dbo.Customers', 'SinglePoint.dbo.OrgChart_ReportingTypes', 'SinglePoint.dbo.polygon_geography', 'SinglePoint.dbo.Users', 'SinglePoint.dbo.WarehouseDetails', 'SinglePoint.dbo.Country_Groups', 'SinglePoint.dbo.tqoSrvDealers', 'SinglePoint.dbo.Country_Mapping', 'SinglePoint.dbo.MethodOfContact', 'SinglePoint.dbo.incEvents', 'SinglePoint.quoter.tqoProblems_WarehouseDriveDistance_Xref', 'SinglePoint.dbo.Warehouse_FSL', 'SinglePoint.dbo.incCodes', 'SinglePoint.dbo.Activity_ExtendedData', 'SinglePoint.dbo.Warehouse_FieldEngineers', 'Ticketing.dbo.Queue_Users', 'Ticketing.dbo.Queue_Incidents', 'SinglePoint.dbo.IncidentDatesDeferals', 'Ticketing.dbo.Queue_Warehouse_Incidents', 'Ticketing.dbo.Incident_Metric_Details', 'Ticketing.dbo.Incident_ServiceOrder_Parts_Reservations', 'Ticketing.dbo.Incident_ServiceOrder_Parts_Needed', 'SinglePoint.dbo.ContractHeaders', 'SinglePoint.dbo.SroTypes', 'Ticketing.dbo.Incident_ServiceOrder_Header', 'SinglePoint.dbo.AssetHeaders', 'SinglePoint.dbo.CountryCodes', 'SinglePoint.dbo.ContractLines', 'SinglePoint.dbo.CountryRegions', 'SinglePoint.dbo.tqoItem', 'SinglePoint.dbo.SroHeader', 'SinglePoint.dbo.Addresses', 'SinglePoint.dbo.tqoQuoteHeader', 'SinglePoint.dbo.tqoQuoteLine', 'SinglePoint.dbo.Currency_PriceList_Xref', 'SinglePoint.dbo.tqoQuote'])
table_names = []

for db in dbs:
    table_data = connection_manager.execute_query(get_tables_qry, None, server, db, user=user, password=password)
    tables = [row['TABLE_NAME'] for row in table_data if '{db}.dbo.{table}'.format(db=db, table=row['TABLE_NAME']) in tables_to_create]

    for table in tables:
        fq_table_name = '{db}.dbo.{table}'.format(db=db, table=table)
        if fq_table_name in tables_to_create:
            tmp = connection_manager.execute_query(get_src_qry, [table], server, db, user=user, password=password)
            src_qry = 'select'
            snowflake_create = 'create or replace table repo.{source}."{db}.{schema}.{table}" (\n'.format(source=source,db=db,schema='dbo', table=table)
            if len(tmp) <= 1:
                print('Error on:', fq_table_name, '- no columns under cdc')
                continue
            snowflake_create += '\tdeleted int,'
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

