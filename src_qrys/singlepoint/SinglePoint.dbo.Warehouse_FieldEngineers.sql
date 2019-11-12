select
	 [WarehouseID] = concat('"', [Warehouse_FieldEngineers].[WarehouseID], '"'),
	 [FieldEngineerID] = concat('"', [Warehouse_FieldEngineers].[FieldEngineerID], '"'),
	 [CreatedByID] = concat('"', [Warehouse_FieldEngineers].[CreatedByID], '"'),
	 [CreatedDate] = convert(varchar(50), [Warehouse_FieldEngineers].[CreatedDate], 21)
from SinglePoint.dbo.Warehouse_FieldEngineers