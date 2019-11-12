select
	 [ForwardStockingLocationID] = concat(char(34), isNull(cast([Warehouse_FSL].[ForwardStockingLocationID] as nvarchar(max)), '\N'), char(34)),
	 [Name] = concat(char(34), isNull(cast([Warehouse_FSL].[Name] as nvarchar(max)), '\N'), char(34)),
	 [Description] = concat(char(34), isNull(cast([Warehouse_FSL].[Description] as nvarchar(max)), '\N'), char(34)),
	 [AddressID] = concat(char(34), isNull(cast([Warehouse_FSL].[AddressID] as nvarchar(max)), '\N'), char(34)),
	 [Status] = concat(char(34), isNull(cast([Warehouse_FSL].[Status] as nvarchar(max)), '\N'), char(34)),
	 [MonthlyCost] = concat(char(34), isNull(cast([Warehouse_FSL].[MonthlyCost] as nvarchar(max)), '\N'), char(34)),
	 [CreatedDate] = isNull(convert(varchar(50), [Warehouse_FSL].[CreatedDate], 21), '\N'),
	 [CreatedByUserID] = concat(char(34), isNull(cast([Warehouse_FSL].[CreatedByUserID] as nvarchar(max)), '\N'), char(34)),
	 [LastUpdatedDate] = isNull(convert(varchar(50), [Warehouse_FSL].[LastUpdatedDate], 21), '\N'),
	 [LastUpdatedByUserID] = concat(char(34), isNull(cast([Warehouse_FSL].[LastUpdatedByUserID] as nvarchar(max)), '\N'), char(34)),
	 [Oracle_InventoryOrg_ID] = concat(char(34), isNull(cast([Warehouse_FSL].[Oracle_InventoryOrg_ID] as nvarchar(max)), '\N'), char(34)),
	 [Oracle_InventoryOrg_Code] = concat(char(34), isNull(cast([Warehouse_FSL].[Oracle_InventoryOrg_Code] as nvarchar(max)), '\N'), char(34)),
	 [Oracle_InventoryOrg_Name] = concat(char(34), isNull(cast([Warehouse_FSL].[Oracle_InventoryOrg_Name] as nvarchar(max)), '\N'), char(34)),
	 [ForwardStockingLocationKey] = concat(char(34), isNull(cast([Warehouse_FSL].[ForwardStockingLocationKey] as nvarchar(max)), '\N'), char(34)),
	 [VendorName] = concat(char(34), isNull(cast([Warehouse_FSL].[VendorName] as nvarchar(max)), '\N'), char(34)),
	 [VendorLocation_ID] = concat(char(34), isNull(cast([Warehouse_FSL].[VendorLocation_ID] as nvarchar(max)), '\N'), char(34)),
	 [Radius] = concat(char(34), isNull(cast([Warehouse_FSL].[Radius] as nvarchar(max)), '\N'), char(34)),
	 [Type] = concat(char(34), isNull(cast([Warehouse_FSL].[Type] as nvarchar(max)), '\N'), char(34))
from SinglePoint.dbo.Warehouse_FSL