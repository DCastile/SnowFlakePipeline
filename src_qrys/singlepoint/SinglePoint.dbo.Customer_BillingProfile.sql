select
	 [CustomerID] = concat(char(34), isNull(cast([Customer_BillingProfile].[CustomerID] as nvarchar(max)), '\N'), char(34)),
	 [allowSubcontractedTimeAndMaterial] = concat(char(34), isNull(cast([Customer_BillingProfile].[allowSubcontractedTimeAndMaterial] as nvarchar(max)), '\N'), char(34)),
	 [InvoiceCadence_ID] = concat(char(34), isNull(cast([Customer_BillingProfile].[InvoiceCadence_ID] as nvarchar(max)), '\N'), char(34)),
	 [InvoiceCadence_Name] = concat(char(34), isNull(cast([Customer_BillingProfile].[InvoiceCadence_Name] as nvarchar(max)), '\N'), char(34)),
	 [Assets_AutoAdd_MMC] = concat(char(34), isNull(cast([Customer_BillingProfile].[Assets_AutoAdd_MMC] as nvarchar(max)), '\N'), char(34)),
	 [StrategicCustomer] = concat(char(34), isNull(cast([Customer_BillingProfile].[StrategicCustomer] as nvarchar(max)), '\N'), char(34))
from SinglePoint.dbo.Customer_BillingProfile