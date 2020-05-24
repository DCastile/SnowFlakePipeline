select
	 [AssetHeaderID] = isNull(cast([AssetHeaders].[AssetHeaderID] as varchar(36)), '\N'),
	 [CustomerID] = isNull(cast([AssetHeaders].[CustomerID] as varchar(36)), '\N'),
	 [StatusCodeID] = isNull(cast([AssetHeaders].[StatusCodeID] as varchar(36)), '\N'),
	 [AssetName] = concat(char(34), isNull(replace(cast([AssetHeaders].[AssetName] as nvarchar(100)), char(34), char(0)), '\N'), char(34)),
	 [SMSUnitKey] = isNull(cast([AssetHeaders].[SMSUnitKey] as varchar(36)), '\N'),
	 [SerialNumber] = concat(char(34), isNull(replace(cast([AssetHeaders].[SerialNumber] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [Description] = concat(char(34), isNull(replace(cast([AssetHeaders].[Description] as nvarchar(200)), char(34), char(0)), '\N'), char(34)),
	 [MFGPartNumber] = concat(char(34), isNull(replace(cast([AssetHeaders].[MFGPartNumber] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [CustAddressID] = isNull(cast([AssetHeaders].[CustAddressID] as varchar(36)), '\N'),
	 [ListPrice] = isNull(cast([AssetHeaders].[ListPrice] as varchar(36)), '\N'),
	 [PurchasePrice] = isNull(cast([AssetHeaders].[PurchasePrice] as varchar(36)), '\N'),
	 [AcquisitionDate] = isNull(convert(varchar(50), [AssetHeaders].[AcquisitionDate], 21), '\N'),
	 [InstallDate] = isNull(convert(varchar(50), [AssetHeaders].[InstallDate], 21), '\N'),
	 [WarrantyTypeID] = isNull(cast([AssetHeaders].[WarrantyTypeID] as varchar(36)), '\N'),
	 [WarrantyStartDate] = isNull(convert(varchar(50), [AssetHeaders].[WarrantyStartDate], 21), '\N'),
	 [WarrantyStopDate] = isNull(convert(varchar(50), [AssetHeaders].[WarrantyStopDate], 21), '\N'),
	 [WarrantyAlertDate] = isNull(convert(varchar(50), [AssetHeaders].[WarrantyAlertDate], 21), '\N'),
	 [WarrantyContactID] = isNull(cast([AssetHeaders].[WarrantyContactID] as varchar(36)), '\N'),
	 [WarrantyStatusID] = isNull(cast([AssetHeaders].[WarrantyStatusID] as varchar(36)), '\N'),
	 [LeaseStartDate] = isNull(convert(varchar(50), [AssetHeaders].[LeaseStartDate], 21), '\N'),
	 [LeaseStopDate] = isNull(convert(varchar(50), [AssetHeaders].[LeaseStopDate], 21), '\N'),
	 [LeaseAlertDate] = isNull(convert(varchar(50), [AssetHeaders].[LeaseAlertDate], 21), '\N'),
	 [LeaseContactID] = isNull(cast([AssetHeaders].[LeaseContactID] as varchar(36)), '\N'),
	 [LeaseStatusID] = isNull(cast([AssetHeaders].[LeaseStatusID] as varchar(36)), '\N'),
	 [OperatingLease] = isNull(cast([AssetHeaders].[OperatingLease] as varchar(36)), '\N'),
	 [LeaseSupplierID] = isNull(cast([AssetHeaders].[LeaseSupplierID] as varchar(36)), '\N'),
	 [NotificationPeriod] = isNull(cast([AssetHeaders].[NotificationPeriod] as varchar(36)), '\N'),
	 [SchdDecomDate] = isNull(convert(varchar(50), [AssetHeaders].[SchdDecomDate], 21), '\N'),
	 [SchdDecomAlertDate] = isNull(convert(varchar(50), [AssetHeaders].[SchdDecomAlertDate], 21), '\N'),
	 [DecomDate] = isNull(convert(varchar(50), [AssetHeaders].[DecomDate], 21), '\N'),
	 [DecomContactID] = isNull(cast([AssetHeaders].[DecomContactID] as varchar(36)), '\N'),
	 [ReasonCodeID] = isNull(cast([AssetHeaders].[ReasonCodeID] as varchar(36)), '\N'),
	 [SupplierID] = isNull(cast([AssetHeaders].[SupplierID] as varchar(36)), '\N'),
	 [PriorityRank] = isNull(cast([AssetHeaders].[PriorityRank] as varchar(36)), '\N'),
	 [FailOverConfig] = isNull(cast([AssetHeaders].[FailOverConfig] as varchar(36)), '\N'),
	 [MaxDownTime] = isNull(cast([AssetHeaders].[MaxDownTime] as varchar(36)), '\N'),
	 [AssetTagNumber] = concat(char(34), isNull(replace(cast([AssetHeaders].[AssetTagNumber] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [IPAddress] = concat(char(34), isNull(replace(cast([AssetHeaders].[IPAddress] as nvarchar(16)), char(34), char(0)), '\N'), char(34)),
	 [Subnet] = concat(char(34), isNull(replace(cast([AssetHeaders].[Subnet] as nvarchar(16)), char(34), char(0)), '\N'), char(34)),
	 [ChangedByID] = isNull(cast([AssetHeaders].[ChangedByID] as varchar(36)), '\N'),
	 [LastChanged] = isNull(convert(varchar(50), [AssetHeaders].[LastChanged], 21), '\N'),
	 [CreateByID] = isNull(cast([AssetHeaders].[CreateByID] as varchar(36)), '\N'),
	 [CreateDate] = isNull(convert(varchar(50), [AssetHeaders].[CreateDate], 21), '\N'),
	 [OpOwnerContactID] = isNull(cast([AssetHeaders].[OpOwnerContactID] as varchar(36)), '\N'),
	 [ComponentRollupFlag] = isNull(cast([AssetHeaders].[ComponentRollupFlag] as varchar(36)), '\N'),
	 [VirtualFlag] = isNull(cast([AssetHeaders].[VirtualFlag] as varchar(36)), '\N'),
	 [CPU] = concat(char(34), isNull(replace(cast([AssetHeaders].[CPU] as nvarchar(20)), char(34), char(0)), '\N'), char(34)),
	 [Diskspace] = concat(char(34), isNull(replace(cast([AssetHeaders].[Diskspace] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [Memory] = concat(char(34), isNull(replace(cast([AssetHeaders].[Memory] as nvarchar(20)), char(34), char(0)), '\N'), char(34)),
	 [OS] = concat(char(34), isNull(replace(cast([AssetHeaders].[OS] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [LocationID] = isNull(cast([AssetHeaders].[LocationID] as varchar(36)), '\N'),
	 [ReviewDate] = isNull(convert(varchar(50), [AssetHeaders].[ReviewDate], 21), '\N'),
	 [ReqHWContract] = isNull(cast([AssetHeaders].[ReqHWContract] as varchar(36)), '\N'),
	 [ReqSWContract] = isNull(cast([AssetHeaders].[ReqSWContract] as varchar(36)), '\N'),
	 [IsSMS] = isNull(cast([AssetHeaders].[IsSMS] as varchar(36)), '\N'),
	 [SerialNumberAlphaNum] = concat(char(34), isNull(replace(cast([AssetHeaders].[SerialNumberAlphaNum] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [smsSrvDealer] = isNull(cast([AssetHeaders].[smsSrvDealer] as varchar(36)), '\N'),
	 [IsFutureSMS] = isNull(cast([AssetHeaders].[IsFutureSMS] as varchar(36)), '\N'),
	 [ItemGuid] = isNull(cast([AssetHeaders].[ItemGuid] as varchar(36)), '\N'),
	 [SourceSystem] = concat(char(34), isNull(replace(cast([AssetHeaders].[SourceSystem] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [SourceCompany] = concat(char(34), isNull(replace(cast([AssetHeaders].[SourceCompany] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [SourceProc] = concat(char(34), isNull(replace(cast([AssetHeaders].[SourceProc] as nvarchar(255)), char(34), char(0)), '\N'), char(34)),
	 [MASCompanyID] = concat(char(34), isNull(replace(cast([AssetHeaders].[MASCompanyID] as nvarchar(10)), char(34), char(0)), '\N'), char(34)),
	 [SAP_Component_Key] = concat(char(34), isNull(replace(cast([AssetHeaders].[SAP_Component_Key] as nvarchar(18)), char(34), char(0)), '\N'), char(34)),
	 [SAP_SyncAck_DateTime] = isNull(convert(varchar(50), [AssetHeaders].[SAP_SyncAck_DateTime], 21), '\N'),
	 [SAP_SyncAck_SerialNumber] = concat(char(34), isNull(replace(cast([AssetHeaders].[SAP_SyncAck_SerialNumber] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [SAP_IsPrimary] = isNull(cast([AssetHeaders].[SAP_IsPrimary] as varchar(36)), '\N'),
	 [SAP_SerialNumber] = concat(char(34), isNull(replace(cast([AssetHeaders].[SAP_SerialNumber] as nvarchar(18)), char(34), char(0)), '\N'), char(34)),
	 [SerialNumberChangedFlag] = isNull(cast([AssetHeaders].[SerialNumberChangedFlag] as varchar(36)), '\N'),
	 [Company] = concat(char(34), isNull(replace(cast([AssetHeaders].[Company] as nvarchar(255)), char(34), char(0)), '\N'), char(34)),
	 [Operation] = concat(char(34), isNull(replace(cast([AssetHeaders].[Operation] as nvarchar(255)), char(34), char(0)), '\N'), char(34)),
	 [Function] = concat(char(34), isNull(replace(cast([AssetHeaders].[Function] as nvarchar(255)), char(34), char(0)), '\N'), char(34)),
	 [Oracle_system_ID] = isNull(cast([AssetHeaders].[Oracle_system_ID] as varchar(36)), '\N'),
	 [Oracle_IBase_ID] = isNull(cast([AssetHeaders].[Oracle_IBase_ID] as varchar(36)), '\N'),
	 [Oracle_SyncAck_IBase] = isNull(convert(varchar(50), [AssetHeaders].[Oracle_SyncAck_IBase], 21), '\N'),
	 [Oracle_SyncAck_System] = isNull(convert(varchar(50), [AssetHeaders].[Oracle_SyncAck_System], 21), '\N'),
	 [Manufacturer_Name] = concat(char(34), isNull(replace(cast([AssetHeaders].[Manufacturer_Name] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [Asset_Type] = concat(char(34), isNull(replace(cast([AssetHeaders].[Asset_Type] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [Item_Number] = concat(char(34), isNull(replace(cast([AssetHeaders].[Item_Number] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [EnrichmentStatus] = isNull(cast([AssetHeaders].[EnrichmentStatus] as varchar(36)), '\N')
from SinglePoint.dbo.AssetHeaders with(nolock)