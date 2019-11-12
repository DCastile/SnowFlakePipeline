select
	 [CustomerID] = concat(char(34), [Customer_BillingProfile].[CustomerID], char(34)),
	 [allowSubcontractedTimeAndMaterial] = concat(char(34), [Customer_BillingProfile].[allowSubcontractedTimeAndMaterial], char(34)),
	 [InvoiceCadence_ID] = concat(char(34), [Customer_BillingProfile].[InvoiceCadence_ID], char(34)),
	 [InvoiceCadence_Name] = concat(char(34), [Customer_BillingProfile].[InvoiceCadence_Name], char(34)),
	 [Assets_AutoAdd_MMC] = concat(char(34), [Customer_BillingProfile].[Assets_AutoAdd_MMC], char(34)),
	 [StrategicCustomer] = concat(char(34), [Customer_BillingProfile].[StrategicCustomer], char(34))
from SinglePoint.dbo.Customer_BillingProfile