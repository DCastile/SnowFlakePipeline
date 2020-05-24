select
	 [CustomerID] = isNull(cast([Customer_BillingProfile].[CustomerID] as varchar(36)), '\N'),
	 [allowSubcontractedTimeAndMaterial] = isNull(cast([Customer_BillingProfile].[allowSubcontractedTimeAndMaterial] as varchar(36)), '\N'),
	 [InvoiceCadence_ID] = isNull(cast([Customer_BillingProfile].[InvoiceCadence_ID] as varchar(36)), '\N'),
	 [InvoiceCadence_Name] = concat(char(34), isNull(replace(cast([Customer_BillingProfile].[InvoiceCadence_Name] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [Assets_AutoAdd_MMC] = isNull(cast([Customer_BillingProfile].[Assets_AutoAdd_MMC] as varchar(36)), '\N'),
	 [StrategicCustomer] = isNull(cast([Customer_BillingProfile].[StrategicCustomer] as varchar(36)), '\N')
from SinglePoint.dbo.Customer_BillingProfile with(nolock)