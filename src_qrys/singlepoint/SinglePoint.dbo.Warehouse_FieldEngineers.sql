select
	 [WarehouseID] = isNull(quotename([WarehouseID], char(34)), '\N'),
	 [FieldEngineerID] = isNull(quotename([FieldEngineerID], char(34)), '\N'),
	 [CreatedByID] = isNull(quotename([CreatedByID], char(34)), '\N'),
	 [CreatedDate] = isNull(convert(varchar(50), [CreatedDate], 21), '\N')
from SinglePoint.dbo.Warehouse_FieldEngineers