select
	 [GoodsReceiptLineID] = isNull(quotename([GoodsReceiptLineID], char(34)), '\N'),
	 [PurchaseOrderNumber] = isNull(quotename([PurchaseOrderNumber], char(34)), '\N'),
	 [LineNumber] = isNull(quotename([LineNumber], char(34)), '\N'),
	 [MaterialNumber] = isNull(quotename([MaterialNumber], char(34)), '\N'),
	 [MaterialDescription] = isNull(quotename([MaterialDescription], char(34)), '\N'),
	 [SerialNumber] = isNull(quotename([SerialNumber], char(34)), '\N'),
	 [Quantity] = isNull(quotename([Quantity], char(34)), '\N'),
	 [Manufacturer] = isNull(quotename([Manufacturer], char(34)), '\N'),
	 [Plant] = isNull(quotename([Plant], char(34)), '\N'),
	 [StorageLocation] = isNull(quotename([StorageLocation], char(34)), '\N'),
	 [StorageLocationDescription] = isNull(quotename([StorageLocationDescription], char(34)), '\N'),
	 [CreateByID] = isNull(quotename([CreateByID], char(34)), '\N'),
	 [CreateDate] = isNull(convert(varchar(50), [CreateDate], 21), '\N'),
	 [LastChangedByID] = isNull(quotename([LastChangedByID], char(34)), '\N'),
	 [LastChanged] = isNull(convert(varchar(50), [LastChanged], 21), '\N')
from SinglePoint.dbo.GoodsReceipt_Lines