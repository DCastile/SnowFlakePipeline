select
	 [PurchaseOrderID] = quotename([PurchaseOrders].[PurchaseOrderID], char(34)),
	 [PurchaseOrderNumber] = quotename([PurchaseOrders].[PurchaseOrderNumber], char(34)),
	 [CustomerID] = quotename([PurchaseOrders].[CustomerID], char(34)),
	 [VendorID] = quotename([PurchaseOrders].[VendorID], char(34)),
	 [StartDate] = quotename([PurchaseOrders].[StartDate], char(34)),
	 [ExpirationDate] = quotename([PurchaseOrders].[ExpirationDate], char(34)),
	 [Currency] = quotename([PurchaseOrders].[Currency], char(34)),
	 [Amount] = quotename([PurchaseOrders].[Amount], char(34)),
	 [AmountUsed] = quotename([PurchaseOrders].[AmountUsed], char(34)),
	 [Description] = quotename([PurchaseOrders].[Description], char(34)),
	 [CancelledDate] = quotename([PurchaseOrders].[CancelledDate], char(34)),
	 [Status] = quotename([PurchaseOrders].[Status], char(34))
from SinglePoint.dbo.PurchaseOrders