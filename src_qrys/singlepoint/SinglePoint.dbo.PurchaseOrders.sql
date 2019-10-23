select
	 [PurchaseOrderID] = isNull(quotename([PurchaseOrderID], char(34)), '\N'),
	 [PurchaseOrderNumber] = isNull(quotename([PurchaseOrderNumber], char(34)), '\N'),
	 [CustomerID] = isNull(quotename([CustomerID], char(34)), '\N'),
	 [VendorID] = isNull(quotename([VendorID], char(34)), '\N'),
	 [StartDate] = isNull(quotename([StartDate], char(34)), '\N'),
	 [ExpirationDate] = isNull(quotename([ExpirationDate], char(34)), '\N'),
	 [Currency] = isNull(quotename([Currency], char(34)), '\N'),
	 [Amount] = isNull(quotename([Amount], char(34)), '\N'),
	 [AmountUsed] = isNull(quotename([AmountUsed], char(34)), '\N'),
	 [Description] = isNull(quotename([Description], char(34)), '\N'),
	 [CancelledDate] = isNull(quotename([CancelledDate], char(34)), '\N'),
	 [Status] = isNull(quotename([Status], char(34)), '\N')
from SinglePoint.dbo.PurchaseOrders