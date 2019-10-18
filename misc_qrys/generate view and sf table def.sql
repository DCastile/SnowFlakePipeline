select
-- 	COLUMN_NAME,
-- 	DATA_TYPE,
-- 	SnowFlakeDataType,

    '"' + COLUMN_NAME + '"' + ' ' + SnowFlakeDataType + IIF(num_columns = ordinal_position, '', ',') SnowFlakeCreate,
    'isNull(' +
    case data_type
        when 'datetime' then 'convert(varchar(50), [' + column_name + '], 21)'
        else 'quotename([' + COLUMN_NAME + '], char(34))'
	end + ', ''\N'')' + ' [' + COLUMN_NAME + ']' + IIF(num_columns = ordinal_position, '', ',') SqlServerViewCreate
from (
	select
	    ORDINAL_POSITION,
		COLUMN_NAME,
	    DATA_TYPE,
	    case DATA_TYPE
		    when 'varchar' then 'string'
		    when 'nvarchar' then 'string'
	        when 'datetime' then 'datetime'
	        when 'decimal' then 'numeric'
	        when 'money' then 'numeric'
	        when 'numeric' then 'numeric'
	        when 'bit' then 'boolean'
	        when 'uniqueidentifier' then 'string'
	        else DATA_TYPE
		end SnowFlakeDataType,
	    max(ORDINAL_POSITION) over(partition by TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME) num_columns
	from SinglePoint.INFORMATION_SCHEMA.COLUMNS
	where
	    TABLE_SCHEMA = 'dbo'
	    and TABLE_NAME  = 'ContractHeaders'
) a
order by ORDINAL_POSITION



-------------------------------------- needed for cdc
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
	    and TABLE_NAME  = 'Currency'
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