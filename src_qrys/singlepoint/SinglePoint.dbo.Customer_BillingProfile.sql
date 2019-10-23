select
	 [CustomerID] = isNull(quotename([CustomerID], char(34)), '\N'),
	 [allowSubcontractedTimeAndMaterial] = isNull(quotename([allowSubcontractedTimeAndMaterial], char(34)), '\N'),
	 [InvoiceCadence_ID] = isNull(quotename([InvoiceCadence_ID], char(34)), '\N'),
	 [InvoiceCadence_Name] = isNull(quotename([InvoiceCadence_Name], char(34)), '\N'),
	 [Assets_AutoAdd_MMC] = isNull(quotename([Assets_AutoAdd_MMC], char(34)), '\N'),
	 [StrategicCustomer] = isNull(quotename([StrategicCustomer], char(34)), '\N')
from SinglePoint.dbo.Customer_BillingProfile