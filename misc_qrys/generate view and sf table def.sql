select
-- 	COLUMN_NAME,
-- 	DATA_TYPE,
-- 	SnowFlakeDataType,

    '"' + COLUMN_NAME + '"' + ' ' + SnowFlakeDataType + IIF(num_columns = ordinal_position, '', ',') SnowFlakeCreate,
    case data_type
        when 'datetime' then '[' + column_name + ']'
        else 'quotename([' + COLUMN_NAME + '], char(34)) [' + COLUMN_NAME + ']'
	end + IIF(num_columns = ordinal_position, '', ',') SqlServerViewCreate
from (
	select
	    ORDINAL_POSITION,
		COLUMN_NAME,
	    DATA_TYPE,
	    case DATA_TYPE
		    when 'varchar' then 'string'
	        when 'datetime' then 'datetime'
	        when 'decimal' then 'numeric'
	        when 'numeric' then 'numeric'
	        else DATA_TYPE
		end SnowFlakeDataType,
	    max(ORDINAL_POSITION) over(partition by TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME) num_columns
	from SMSCLTSQLRPTPROD.INFORMATION_SCHEMA.COLUMNS
	where
	    TABLE_SCHEMA = 'dbo'
	    and TABLE_NAME  = 'FPLT'
) a
order by ORDINAL_POSITION
