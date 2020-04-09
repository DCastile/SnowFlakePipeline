select
	 [WarehouseID] = isNull(cast([Warehouse_FieldEngineers].[WarehouseID] as varchar(36)), '\N'),
	 [FieldEngineerID] = isNull(cast([Warehouse_FieldEngineers].[FieldEngineerID] as varchar(36)), '\N'),
	 [CreatedByID] = isNull(cast([Warehouse_FieldEngineers].[CreatedByID] as varchar(36)), '\N'),
	 [CreatedDate] = isNull(convert(varchar(50), [Warehouse_FieldEngineers].[CreatedDate], 21), '\N')
from SinglePoint.dbo.Warehouse_FieldEngineers