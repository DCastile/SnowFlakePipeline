select
	 [AddressID] = isNull(cast([Addresses].[AddressID] as varchar(36)), '\N'),
	 [fkID] = isNull(cast([Addresses].[fkID] as varchar(36)), '\N'),
	 [Address1] = concat(char(34), isNull(replace(cast([Addresses].[Address1] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [Address2] = concat(char(34), isNull(replace(cast([Addresses].[Address2] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [Address3] = concat(char(34), isNull(replace(cast([Addresses].[Address3] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [Address4] = concat(char(34), isNull(replace(cast([Addresses].[Address4] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [City] = concat(char(34), isNull(replace(cast([Addresses].[City] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [State] = concat(char(34), isNull(replace(cast([Addresses].[State] as nvarchar(3)), char(34), char(0)), '\N'), char(34)),
	 [Zip] = concat(char(34), isNull(replace(cast([Addresses].[Zip] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [Country] = concat(char(34), isNull(replace(cast([Addresses].[Country] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [Phone] = concat(char(34), isNull(replace(cast([Addresses].[Phone] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [Fax] = concat(char(34), isNull(replace(cast([Addresses].[Fax] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [InactiveFlag] = isNull(cast([Addresses].[InactiveFlag] as varchar(36)), '\N'),
	 [ChangedByID] = isNull(cast([Addresses].[ChangedByID] as varchar(36)), '\N'),
	 [LastChanged] = isNull(convert(varchar(50), [Addresses].[LastChanged], 21), '\N'),
	 [SMSAddrKey] = isNull(cast([Addresses].[SMSAddrKey] as varchar(36)), '\N'),
	 [TimeZoneID] = isNull(cast([Addresses].[TimeZoneID] as varchar(36)), '\N'),
	 [SiteNote] = concat(char(34), isNull(replace(cast([Addresses].[SiteNote] as nvarchar(2000)), char(34), char(0)), '\N'), char(34)),
	 [AddrName] = concat(char(34), isNull(replace(cast([Addresses].[AddrName] as nvarchar(40)), char(34), char(0)), '\N'), char(34)),
	 [Mobile] = concat(char(34), isNull(replace(cast([Addresses].[Mobile] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [Display] = concat(char(34), isNull(replace(cast([Addresses].[Display] as nvarchar(105)), char(34), char(0)), '\N'), char(34)),
	 [PrimaryContactID] = isNull(cast([Addresses].[PrimaryContactID] as varchar(36)), '\N'),
	 [ImportFrom] = concat(char(34), isNull(replace(cast([Addresses].[ImportFrom] as nvarchar(255)), char(34), char(0)), '\N'), char(34)),
	 [ImportDate] = isNull(convert(varchar(50), [Addresses].[ImportDate], 21), '\N'),
	 [ImportBatch] = isNull(cast([Addresses].[ImportBatch] as varchar(36)), '\N'),
	 [CustomerAddressName] = concat(char(34), isNull(replace(cast([Addresses].[CustomerAddressName] as nvarchar(15)), char(34), char(0)), '\N'), char(34)),
	 [CreateDate] = isNull(convert(varchar(50), [Addresses].[CreateDate], 21), '\N'),
	 [CreateByID] = isNull(cast([Addresses].[CreateByID] as varchar(36)), '\N'),
	 [AddressSource] = concat(char(34), isNull(replace(cast([Addresses].[AddressSource] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [AsyncStatus] = concat(char(34), isNull(replace(cast([Addresses].[AsyncStatus] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [AsyncError] = concat(char(34), isNull(replace(cast([Addresses].[AsyncError] as nvarchar(255)), char(34), char(0)), '\N'), char(34)),
	 [SourceSystem] = concat(char(34), isNull(replace(cast([Addresses].[SourceSystem] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [SourceCompany] = concat(char(34), isNull(replace(cast([Addresses].[SourceCompany] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [SourceProc] = concat(char(34), isNull(replace(cast([Addresses].[SourceProc] as nvarchar(255)), char(34), char(0)), '\N'), char(34)),
	 [Country_A2] = concat(char(34), isNull(replace(cast([Addresses].[Country_A2] as nvarchar(2)), char(34), char(0)), '\N'), char(34)),
	 [SAP_Address_Key] = concat(char(34), isNull(replace(cast([Addresses].[SAP_Address_Key] as nvarchar(18)), char(34), char(0)), '\N'), char(34)),
	 [SAP_Partner_Function] = concat(char(34), isNull(replace(cast([Addresses].[SAP_Partner_Function] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [SAP_Component_Key] = concat(char(34), isNull(replace(cast([Addresses].[SAP_Component_Key] as nvarchar(18)), char(34), char(0)), '\N'), char(34)),
	 [SAP_Temporary_Key] = concat(char(34), isNull(replace(cast([Addresses].[SAP_Temporary_Key] as nvarchar(18)), char(34), char(0)), '\N'), char(34)),
	 [SAP_SyncAck_DateTime] = isNull(convert(varchar(50), [Addresses].[SAP_SyncAck_DateTime], 21), '\N'),
	 [Experian_IsValidated] = isNull(cast([Addresses].[Experian_IsValidated] as varchar(36)), '\N'),
	 [Experian_ValidationDate] = isNull(convert(varchar(50), [Addresses].[Experian_ValidationDate], 21), '\N'),
	 [dateTimeUtilTimeZoneID] = isNull(cast([Addresses].[dateTimeUtilTimeZoneID] as varchar(36)), '\N'),
	 [SalesForce_Address_Key] = concat(char(34), isNull(replace(cast([Addresses].[SalesForce_Address_Key] as nvarchar(18)), char(34), char(0)), '\N'), char(34)),
	 [Oracle_ID] = isNull(cast([Addresses].[Oracle_ID] as varchar(36)), '\N'),
	 [Oracle_SyncAck_DateTime] = isNull(convert(varchar(50), [Addresses].[Oracle_SyncAck_DateTime], 21), '\N'),
	 [Validation_Level] = isNull(cast([Addresses].[Validation_Level] as varchar(36)), '\N'),
	 [Validation_Date] = isNull(convert(varchar(50), [Addresses].[Validation_Date], 21), '\N'),
	 [TimeZoneCalculation_Method] = isNull(cast([Addresses].[TimeZoneCalculation_Method] as varchar(36)), '\N')
from SinglePoint.dbo.Addresses