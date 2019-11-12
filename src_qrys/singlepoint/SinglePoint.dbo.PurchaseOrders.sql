select
	 [PurchaseOrderID] = concat(char(34), [PurchaseOrders].[PurchaseOrderID], char(34)),
	 [PurchaseOrderNumber] = concat(char(34), [PurchaseOrders].[PurchaseOrderNumber], char(34)),
	 [CustomerID] = concat(char(34), [PurchaseOrders].[CustomerID], char(34)),
	 [VendorID] = concat(char(34), [PurchaseOrders].[VendorID], char(34)),
	 [StartDate] = concat(char(34), [PurchaseOrders].[StartDate], char(34)),
	 [ExpirationDate] = concat(char(34), [PurchaseOrders].[ExpirationDate], char(34)),
	 [Currency] = concat(char(34), [PurchaseOrders].[Currency], char(34)),
	 [Amount] = concat(char(34), [PurchaseOrders].[Amount], char(34)),
	 [AmountUsed] = concat(char(34), [PurchaseOrders].[AmountUsed], char(34)),
	 [Description] = concat(char(34), [PurchaseOrders].[Description], char(34)),
	 [CancelledDate] = concat(char(34), [PurchaseOrders].[CancelledDate], char(34)),
	 [Status] = concat(char(34), [PurchaseOrders].[Status], char(34))
from SinglePoint.dbo.PurchaseOrders