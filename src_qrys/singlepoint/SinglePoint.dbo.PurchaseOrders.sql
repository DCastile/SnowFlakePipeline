select
	 [PurchaseOrderID] = isNull(cast([PurchaseOrders].[PurchaseOrderID] as varchar(36)), '\N'),
	 [PurchaseOrderNumber] = concat(char(34), isNull(replace(cast([PurchaseOrders].[PurchaseOrderNumber] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [CustomerID] = isNull(cast([PurchaseOrders].[CustomerID] as varchar(36)), '\N'),
	 [VendorID] = isNull(cast([PurchaseOrders].[VendorID] as varchar(36)), '\N'),
	 [StartDate] = isNull(convert(varchar(50), [PurchaseOrders].[StartDate], 21), '\N'),
	 [ExpirationDate] = isNull(convert(varchar(50), [PurchaseOrders].[ExpirationDate], 21), '\N'),
	 [Currency] = concat(char(34), isNull(replace(cast([PurchaseOrders].[Currency] as nvarchar(3)), char(34), char(0)), '\N'), char(34)),
	 [Amount] = isNull(cast([PurchaseOrders].[Amount] as varchar(36)), '\N'),
	 [AmountUsed] = isNull(cast([PurchaseOrders].[AmountUsed] as varchar(36)), '\N'),
	 [Description] = concat(char(34), isNull(replace(cast([PurchaseOrders].[Description] as nvarchar(500)), char(34), char(0)), '\N'), char(34)),
	 [CancelledDate] = isNull(convert(varchar(50), [PurchaseOrders].[CancelledDate], 21), '\N'),
	 [Status] = concat(char(34), isNull(replace(cast([PurchaseOrders].[Status] as nvarchar(50)), char(34), char(0)), '\N'), char(34))
from SinglePoint.dbo.PurchaseOrders with(nolock)