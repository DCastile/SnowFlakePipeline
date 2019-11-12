select
	 [WarehouseID] = concat(char(34), [Warehouse_FieldEngineers].[WarehouseID], char(34)),
	 [FieldEngineerID] = concat(char(34), [Warehouse_FieldEngineers].[FieldEngineerID], char(34)),
	 [CreatedByID] = concat(char(34), [Warehouse_FieldEngineers].[CreatedByID], char(34)),
	 [CreatedDate] = convert(varchar(50), [Warehouse_FieldEngineers].[CreatedDate], 21)
from SinglePoint.dbo.Warehouse_FieldEngineers