select
	 [AddressID] = isNull(quotename([AddressID], char(34)), '\N'),
	 [UserID] = isNull(quotename([UserID], char(34)), '\N'),
	 [Date] = isNull(convert(varchar(50), [Date], 21), '\N'),
	 [Action] = isNull(quotename([Action], char(34)), '\N'),
	 [BatchID] = isNull(quotename([BatchID], char(34)), '\N'),
	 [DefaultContactKey] = isNull(quotename([DefaultContactKey], char(34)), '\N'),
	 [ClosestWarehouseKey] = isNull(quotename([ClosestWarehouseKey], char(34)), '\N'),
	 [SalesTerritoryKey] = isNull(quotename([SalesTerritoryKey], char(34)), '\N'),
	 [SalesPersonKey] = isNull(quotename([SalesPersonKey], char(34)), '\N'),
	 [TaxScheduleKey] = isNull(quotename([TaxScheduleKey], char(34)), '\N'),
	 [CreateDate] = isNull(convert(varchar(50), [CreateDate], 21), '\N')
from SinglePoint.dbo.AsyncCustomerAddresses