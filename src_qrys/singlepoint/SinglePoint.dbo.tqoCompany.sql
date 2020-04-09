select
	 [CompanyGuid] = isNull(cast([tqoCompany].[CompanyGuid] as varchar(36)), '\N'),
	 [CompanyID] = concat(char(34), isNull(replace(cast([tqoCompany].[CompanyID] as nvarchar(10)), char(34), char(0)), '\N'), char(34)),
	 [CompanyName] = concat(char(34), isNull(replace(cast([tqoCompany].[CompanyName] as nvarchar(100)), char(34), char(0)), '\N'), char(34)),
	 [CreateDate] = isNull(convert(varchar(50), [tqoCompany].[CreateDate], 21), '\N'),
	 [MasterFlag] = isNull(cast([tqoCompany].[MasterFlag] as varchar(36)), '\N'),
	 [SAP_Company_Key] = concat(char(34), isNull(replace(cast([tqoCompany].[SAP_Company_Key] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [SAP_Company_Code] = concat(char(34), isNull(replace(cast([tqoCompany].[SAP_Company_Code] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [SAP_Sales_Org] = concat(char(34), isNull(replace(cast([tqoCompany].[SAP_Sales_Org] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [SAP_Purch_Org] = concat(char(34), isNull(replace(cast([tqoCompany].[SAP_Purch_Org] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [HomeCurrency] = concat(char(34), isNull(replace(cast([tqoCompany].[HomeCurrency] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [Country] = concat(char(34), isNull(replace(cast([tqoCompany].[Country] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [SAP_Vendor_Key] = concat(char(34), isNull(replace(cast([tqoCompany].[SAP_Vendor_Key] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [WarehouseID_International] = isNull(cast([tqoCompany].[WarehouseID_International] as varchar(36)), '\N'),
	 [CustomerID_International] = isNull(cast([tqoCompany].[CustomerID_International] as varchar(36)), '\N'),
	 [SAP_International_EmployeeNumber] = concat(char(34), isNull(replace(cast([tqoCompany].[SAP_International_EmployeeNumber] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [TaxCode] = concat(char(34), isNull(replace(cast([tqoCompany].[TaxCode] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [TaxPct] = isNull(cast([tqoCompany].[TaxPct] as varchar(36)), '\N'),
	 [isQuotable] = isNull(cast([tqoCompany].[isQuotable] as varchar(36)), '\N'),
	 [MirrorTaxPct] = isNull(cast([tqoCompany].[MirrorTaxPct] as varchar(36)), '\N'),
	 [inERP] = isNull(cast([tqoCompany].[inERP] as varchar(36)), '\N'),
	 [inSinglePoint] = isNull(cast([tqoCompany].[inSinglePoint] as varchar(36)), '\N'),
	 [Oracle_Organization_ID] = isNull(cast([tqoCompany].[Oracle_Organization_ID] as varchar(36)), '\N'),
	 [ContractPrefix] = concat(char(34), isNull(replace(cast([tqoCompany].[ContractPrefix] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [Default_PriceListID] = isNull(cast([tqoCompany].[Default_PriceListID] as varchar(36)), '\N'),
	 [canTransactServiceOrders] = isNull(cast([tqoCompany].[canTransactServiceOrders] as varchar(36)), '\N'),
	 [BillingAddressID] = isNull(cast([tqoCompany].[BillingAddressID] as varchar(36)), '\N'),
	 [MirrorCompanyGuid] = isNull(cast([tqoCompany].[MirrorCompanyGuid] as varchar(36)), '\N')
from SinglePoint.dbo.tqoCompany