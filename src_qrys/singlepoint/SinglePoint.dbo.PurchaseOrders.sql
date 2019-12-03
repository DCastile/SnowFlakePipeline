select
	 [PurchaseOrderID] = concat(char(34), isNull(replace(cast([PurchaseOrders].[PurchaseOrderID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [PurchaseOrderNumber] = concat(char(34), isNull(replace(cast([PurchaseOrders].[PurchaseOrderNumber] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [CustomerID] = concat(char(34), isNull(replace(cast([PurchaseOrders].[CustomerID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [VendorID] = concat(char(34), isNull(replace(cast([PurchaseOrders].[VendorID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [StartDate] = concat(char(34), isNull(replace(cast([PurchaseOrders].[StartDate] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ExpirationDate] = concat(char(34), isNull(replace(cast([PurchaseOrders].[ExpirationDate] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Currency] = concat(char(34), isNull(replace(cast([PurchaseOrders].[Currency] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Amount] = concat(char(34), isNull(replace(cast([PurchaseOrders].[Amount] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [AmountUsed] = concat(char(34), isNull(replace(cast([PurchaseOrders].[AmountUsed] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Description] = concat(char(34), isNull(replace(cast([PurchaseOrders].[Description] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [CancelledDate] = concat(char(34), isNull(replace(cast([PurchaseOrders].[CancelledDate] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Status] = concat(char(34), isNull(replace(cast([PurchaseOrders].[Status] as nvarchar(max)), char(34), char(0)), '\N'), char(34))
from SinglePoint.dbo.PurchaseOrders with(nolock)