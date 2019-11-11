select
	 [WarehouseID] = quotename([Warehouse_FieldEngineers].[WarehouseID], char(34)),
	 [FieldEngineerID] = quotename([Warehouse_FieldEngineers].[FieldEngineerID], char(34)),
	 [CreatedByID] = quotename([Warehouse_FieldEngineers].[CreatedByID], char(34)),
	 [CreatedDate] = convert(varchar(50), [Warehouse_FieldEngineers].[CreatedDate], 21)
from SinglePoint.dbo.Warehouse_FieldEngineers