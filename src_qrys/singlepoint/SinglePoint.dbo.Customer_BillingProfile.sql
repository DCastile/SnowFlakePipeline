select
	 [CustomerID] = concat('"', [Customer_BillingProfile].[CustomerID], '"'),
	 [allowSubcontractedTimeAndMaterial] = concat('"', [Customer_BillingProfile].[allowSubcontractedTimeAndMaterial], '"'),
	 [InvoiceCadence_ID] = concat('"', [Customer_BillingProfile].[InvoiceCadence_ID], '"'),
	 [InvoiceCadence_Name] = concat('"', [Customer_BillingProfile].[InvoiceCadence_Name], '"'),
	 [Assets_AutoAdd_MMC] = concat('"', [Customer_BillingProfile].[Assets_AutoAdd_MMC], '"'),
	 [StrategicCustomer] = concat('"', [Customer_BillingProfile].[StrategicCustomer], '"')
from SinglePoint.dbo.Customer_BillingProfile