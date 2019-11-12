select
	 [PurchaseOrderID] = concat('"', [PurchaseOrders].[PurchaseOrderID], '"'),
	 [PurchaseOrderNumber] = concat('"', [PurchaseOrders].[PurchaseOrderNumber], '"'),
	 [CustomerID] = concat('"', [PurchaseOrders].[CustomerID], '"'),
	 [VendorID] = concat('"', [PurchaseOrders].[VendorID], '"'),
	 [StartDate] = concat('"', [PurchaseOrders].[StartDate], '"'),
	 [ExpirationDate] = concat('"', [PurchaseOrders].[ExpirationDate], '"'),
	 [Currency] = concat('"', [PurchaseOrders].[Currency], '"'),
	 [Amount] = concat('"', [PurchaseOrders].[Amount], '"'),
	 [AmountUsed] = concat('"', [PurchaseOrders].[AmountUsed], '"'),
	 [Description] = concat('"', [PurchaseOrders].[Description], '"'),
	 [CancelledDate] = concat('"', [PurchaseOrders].[CancelledDate], '"'),
	 [Status] = concat('"', [PurchaseOrders].[Status], '"')
from SinglePoint.dbo.PurchaseOrders