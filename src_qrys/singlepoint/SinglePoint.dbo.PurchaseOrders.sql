select
	 [PurchaseOrderID] = concat(char(34), isNull(cast([PurchaseOrders].[PurchaseOrderID] as nvarchar(max)), '\N'), char(34)),
	 [PurchaseOrderNumber] = concat(char(34), isNull(cast([PurchaseOrders].[PurchaseOrderNumber] as nvarchar(max)), '\N'), char(34)),
	 [CustomerID] = concat(char(34), isNull(cast([PurchaseOrders].[CustomerID] as nvarchar(max)), '\N'), char(34)),
	 [VendorID] = concat(char(34), isNull(cast([PurchaseOrders].[VendorID] as nvarchar(max)), '\N'), char(34)),
	 [StartDate] = concat(char(34), isNull(cast([PurchaseOrders].[StartDate] as nvarchar(max)), '\N'), char(34)),
	 [ExpirationDate] = concat(char(34), isNull(cast([PurchaseOrders].[ExpirationDate] as nvarchar(max)), '\N'), char(34)),
	 [Currency] = concat(char(34), isNull(cast([PurchaseOrders].[Currency] as nvarchar(max)), '\N'), char(34)),
	 [Amount] = concat(char(34), isNull(cast([PurchaseOrders].[Amount] as nvarchar(max)), '\N'), char(34)),
	 [AmountUsed] = concat(char(34), isNull(cast([PurchaseOrders].[AmountUsed] as nvarchar(max)), '\N'), char(34)),
	 [Description] = concat(char(34), isNull(cast([PurchaseOrders].[Description] as nvarchar(max)), '\N'), char(34)),
	 [CancelledDate] = concat(char(34), isNull(cast([PurchaseOrders].[CancelledDate] as nvarchar(max)), '\N'), char(34)),
	 [Status] = concat(char(34), isNull(cast([PurchaseOrders].[Status] as nvarchar(max)), '\N'), char(34))
from SinglePoint.dbo.PurchaseOrders