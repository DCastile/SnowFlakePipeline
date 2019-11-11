select
	 [CustomerID] = quotename([Customer_BillingProfile].[CustomerID], char(34)),
	 [allowSubcontractedTimeAndMaterial] = quotename([Customer_BillingProfile].[allowSubcontractedTimeAndMaterial], char(34)),
	 [InvoiceCadence_ID] = quotename([Customer_BillingProfile].[InvoiceCadence_ID], char(34)),
	 [InvoiceCadence_Name] = quotename([Customer_BillingProfile].[InvoiceCadence_Name], char(34)),
	 [Assets_AutoAdd_MMC] = quotename([Customer_BillingProfile].[Assets_AutoAdd_MMC], char(34)),
	 [StrategicCustomer] = quotename([Customer_BillingProfile].[StrategicCustomer], char(34))
from SinglePoint.dbo.Customer_BillingProfile