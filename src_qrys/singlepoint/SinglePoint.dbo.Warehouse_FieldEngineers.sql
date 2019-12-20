select
	 [WarehouseID] = concat(char(34), isNull(replace(cast([Warehouse_FieldEngineers].[WarehouseID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [FieldEngineerID] = concat(char(34), isNull(replace(cast([Warehouse_FieldEngineers].[FieldEngineerID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [CreatedByID] = concat(char(34), isNull(replace(cast([Warehouse_FieldEngineers].[CreatedByID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [CreatedDate] = isNull(convert(varchar(50), [Warehouse_FieldEngineers].[CreatedDate], 21), '\N')
from SinglePoint.dbo.Warehouse_FieldEngineers