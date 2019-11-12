select
	 [AddressID] = concat('"', [Addresses].[AddressID], '"'),
	 [fkID] = concat('"', [Addresses].[fkID], '"'),
	 [Address1] = concat('"', [Addresses].[Address1], '"'),
	 [Address2] = concat('"', [Addresses].[Address2], '"'),
	 [Address3] = concat('"', [Addresses].[Address3], '"'),
	 [Address4] = concat('"', [Addresses].[Address4], '"'),
	 [City] = concat('"', [Addresses].[City], '"'),
	 [State] = concat('"', [Addresses].[State], '"'),
	 [Zip] = concat('"', [Addresses].[Zip], '"'),
	 [Country] = concat('"', [Addresses].[Country], '"'),
	 [Phone] = concat('"', [Addresses].[Phone], '"'),
	 [Fax] = concat('"', [Addresses].[Fax], '"'),
	 [InactiveFlag] = concat('"', [Addresses].[InactiveFlag], '"'),
	 [ChangedByID] = concat('"', [Addresses].[ChangedByID], '"'),
	 [LastChanged] = convert(varchar(50), [Addresses].[LastChanged], 21),
	 [SMSAddrKey] = concat('"', [Addresses].[SMSAddrKey], '"'),
	 [TimeZoneID] = concat('"', [Addresses].[TimeZoneID], '"'),
	 [SiteNote] = concat('"', [Addresses].[SiteNote], '"'),
	 [AddrName] = concat('"', [Addresses].[AddrName], '"'),
	 [Mobile] = concat('"', [Addresses].[Mobile], '"'),
	 [Display] = concat('"', [Addresses].[Display], '"'),
	 [PrimaryContactID] = concat('"', [Addresses].[PrimaryContactID], '"'),
	 [ImportFrom] = concat('"', [Addresses].[ImportFrom], '"'),
	 [ImportDate] = convert(varchar(50), [Addresses].[ImportDate], 21),
	 [ImportBatch] = concat('"', [Addresses].[ImportBatch], '"'),
	 [CustomerAddressName] = concat('"', [Addresses].[CustomerAddressName], '"'),
	 [CreateDate] = convert(varchar(50), [Addresses].[CreateDate], 21),
	 [CreateByID] = concat('"', [Addresses].[CreateByID], '"'),
	 [AddressSource] = concat('"', [Addresses].[AddressSource], '"'),
	 [AsyncStatus] = concat('"', [Addresses].[AsyncStatus], '"'),
	 [AsyncError] = concat('"', [Addresses].[AsyncError], '"'),
	 [SourceSystem] = concat('"', [Addresses].[SourceSystem], '"'),
	 [SourceCompany] = concat('"', [Addresses].[SourceCompany], '"'),
	 [SourceProc] = concat('"', [Addresses].[SourceProc], '"'),
	 [Country_A2] = concat('"', [Addresses].[Country_A2], '"'),
	 [SAP_Address_Key] = concat('"', [Addresses].[SAP_Address_Key], '"'),
	 [SAP_Partner_Function] = concat('"', [Addresses].[SAP_Partner_Function], '"'),
	 [SAP_Component_Key] = concat('"', [Addresses].[SAP_Component_Key], '"'),
	 [SAP_Temporary_Key] = concat('"', [Addresses].[SAP_Temporary_Key], '"'),
	 [SAP_SyncAck_DateTime] = convert(varchar(50), [Addresses].[SAP_SyncAck_DateTime], 21),
	 [Experian_IsValidated] = concat('"', [Addresses].[Experian_IsValidated], '"'),
	 [Experian_ValidationDate] = convert(varchar(50), [Addresses].[Experian_ValidationDate], 21),
	 [dateTimeUtilTimeZoneID] = concat('"', [Addresses].[dateTimeUtilTimeZoneID], '"'),
	 [SalesForce_Address_Key] = concat('"', [Addresses].[SalesForce_Address_Key], '"'),
	 [Oracle_ID] = concat('"', [Addresses].[Oracle_ID], '"'),
	 [Oracle_SyncAck_DateTime] = convert(varchar(50), [Addresses].[Oracle_SyncAck_DateTime], 21),
	 [Validation_Level] = concat('"', [Addresses].[Validation_Level], '"'),
	 [Validation_Date] = convert(varchar(50), [Addresses].[Validation_Date], 21),
	 [TimeZoneCalculation_Method] = concat('"', [Addresses].[TimeZoneCalculation_Method], '"')
from SinglePoint.dbo.Addresses