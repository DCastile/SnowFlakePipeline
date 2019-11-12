select
	 [AssetHeaderID] = concat(char(34), [AssetHeaders].[AssetHeaderID], char(34)),
	 [CustomerID] = concat(char(34), [AssetHeaders].[CustomerID], char(34)),
	 [StatusCodeID] = concat(char(34), [AssetHeaders].[StatusCodeID], char(34)),
	 [AssetName] = concat(char(34), [AssetHeaders].[AssetName], char(34)),
	 [SMSUnitKey] = concat(char(34), [AssetHeaders].[SMSUnitKey], char(34)),
	 [SerialNumber] = concat(char(34), [AssetHeaders].[SerialNumber], char(34)),
	 [Description] = concat(char(34), [AssetHeaders].[Description], char(34)),
	 [MFGPartNumber] = concat(char(34), [AssetHeaders].[MFGPartNumber], char(34)),
	 [CustAddressID] = concat(char(34), [AssetHeaders].[CustAddressID], char(34)),
	 [ListPrice] = concat(char(34), [AssetHeaders].[ListPrice], char(34)),
	 [PurchasePrice] = concat(char(34), [AssetHeaders].[PurchasePrice], char(34)),
	 [AcquisitionDate] = convert(varchar(50), [AssetHeaders].[AcquisitionDate], 21),
	 [InstallDate] = convert(varchar(50), [AssetHeaders].[InstallDate], 21),
	 [WarrantyTypeID] = concat(char(34), [AssetHeaders].[WarrantyTypeID], char(34)),
	 [WarrantyStartDate] = convert(varchar(50), [AssetHeaders].[WarrantyStartDate], 21),
	 [WarrantyStopDate] = convert(varchar(50), [AssetHeaders].[WarrantyStopDate], 21),
	 [WarrantyAlertDate] = convert(varchar(50), [AssetHeaders].[WarrantyAlertDate], 21),
	 [WarrantyContactID] = concat(char(34), [AssetHeaders].[WarrantyContactID], char(34)),
	 [WarrantyStatusID] = concat(char(34), [AssetHeaders].[WarrantyStatusID], char(34)),
	 [LeaseStartDate] = convert(varchar(50), [AssetHeaders].[LeaseStartDate], 21),
	 [LeaseStopDate] = convert(varchar(50), [AssetHeaders].[LeaseStopDate], 21),
	 [LeaseAlertDate] = convert(varchar(50), [AssetHeaders].[LeaseAlertDate], 21),
	 [LeaseContactID] = concat(char(34), [AssetHeaders].[LeaseContactID], char(34)),
	 [LeaseStatusID] = concat(char(34), [AssetHeaders].[LeaseStatusID], char(34)),
	 [OperatingLease] = concat(char(34), [AssetHeaders].[OperatingLease], char(34)),
	 [LeaseSupplierID] = concat(char(34), [AssetHeaders].[LeaseSupplierID], char(34)),
	 [NotificationPeriod] = concat(char(34), [AssetHeaders].[NotificationPeriod], char(34)),
	 [SchdDecomDate] = convert(varchar(50), [AssetHeaders].[SchdDecomDate], 21),
	 [SchdDecomAlertDate] = convert(varchar(50), [AssetHeaders].[SchdDecomAlertDate], 21),
	 [DecomDate] = convert(varchar(50), [AssetHeaders].[DecomDate], 21),
	 [DecomContactID] = concat(char(34), [AssetHeaders].[DecomContactID], char(34)),
	 [ReasonCodeID] = concat(char(34), [AssetHeaders].[ReasonCodeID], char(34)),
	 [SupplierID] = concat(char(34), [AssetHeaders].[SupplierID], char(34)),
	 [PriorityRank] = concat(char(34), [AssetHeaders].[PriorityRank], char(34)),
	 [FailOverConfig] = concat(char(34), [AssetHeaders].[FailOverConfig], char(34)),
	 [MaxDownTime] = concat(char(34), [AssetHeaders].[MaxDownTime], char(34)),
	 [AssetTagNumber] = concat(char(34), [AssetHeaders].[AssetTagNumber], char(34)),
	 [IPAddress] = concat(char(34), [AssetHeaders].[IPAddress], char(34)),
	 [Subnet] = concat(char(34), [AssetHeaders].[Subnet], char(34)),
	 [ChangedByID] = concat(char(34), [AssetHeaders].[ChangedByID], char(34)),
	 [LastChanged] = convert(varchar(50), [AssetHeaders].[LastChanged], 21),
	 [CreateByID] = concat(char(34), [AssetHeaders].[CreateByID], char(34)),
	 [CreateDate] = convert(varchar(50), [AssetHeaders].[CreateDate], 21),
	 [OpOwnerContactID] = concat(char(34), [AssetHeaders].[OpOwnerContactID], char(34)),
	 [ComponentRollupFlag] = concat(char(34), [AssetHeaders].[ComponentRollupFlag], char(34)),
	 [VirtualFlag] = concat(char(34), [AssetHeaders].[VirtualFlag], char(34)),
	 [CPU] = concat(char(34), [AssetHeaders].[CPU], char(34)),
	 [Diskspace] = concat(char(34), [AssetHeaders].[Diskspace], char(34)),
	 [Memory] = concat(char(34), [AssetHeaders].[Memory], char(34)),
	 [OS] = concat(char(34), [AssetHeaders].[OS], char(34)),
	 [LocationID] = concat(char(34), [AssetHeaders].[LocationID], char(34)),
	 [ReviewDate] = convert(varchar(50), [AssetHeaders].[ReviewDate], 21),
	 [ReqHWContract] = concat(char(34), [AssetHeaders].[ReqHWContract], char(34)),
	 [ReqSWContract] = concat(char(34), [AssetHeaders].[ReqSWContract], char(34)),
	 [IsSMS] = concat(char(34), [AssetHeaders].[IsSMS], char(34)),
	 [SerialNumberAlphaNum] = concat(char(34), [AssetHeaders].[SerialNumberAlphaNum], char(34)),
	 [smsSrvDealer] = concat(char(34), [AssetHeaders].[smsSrvDealer], char(34)),
	 [IsFutureSMS] = concat(char(34), [AssetHeaders].[IsFutureSMS], char(34)),
	 [ItemGuid] = concat(char(34), [AssetHeaders].[ItemGuid], char(34)),
	 [SourceSystem] = concat(char(34), [AssetHeaders].[SourceSystem], char(34)),
	 [SourceCompany] = concat(char(34), [AssetHeaders].[SourceCompany], char(34)),
	 [SourceProc] = concat(char(34), [AssetHeaders].[SourceProc], char(34)),
	 [MASCompanyID] = concat(char(34), [AssetHeaders].[MASCompanyID], char(34)),
	 [SAP_Component_Key] = concat(char(34), [AssetHeaders].[SAP_Component_Key], char(34)),
	 [SAP_SyncAck_DateTime] = convert(varchar(50), [AssetHeaders].[SAP_SyncAck_DateTime], 21),
	 [SAP_SyncAck_SerialNumber] = concat(char(34), [AssetHeaders].[SAP_SyncAck_SerialNumber], char(34)),
	 [SAP_IsPrimary] = concat(char(34), [AssetHeaders].[SAP_IsPrimary], char(34)),
	 [SAP_SerialNumber] = concat(char(34), [AssetHeaders].[SAP_SerialNumber], char(34)),
	 [SerialNumberChangedFlag] = concat(char(34), [AssetHeaders].[SerialNumberChangedFlag], char(34)),
	 [Company] = concat(char(34), [AssetHeaders].[Company], char(34)),
	 [Operation] = concat(char(34), [AssetHeaders].[Operation], char(34)),
	 [Function] = concat(char(34), [AssetHeaders].[Function], char(34)),
	 [Oracle_system_ID] = concat(char(34), [AssetHeaders].[Oracle_system_ID], char(34)),
	 [Oracle_IBase_ID] = concat(char(34), [AssetHeaders].[Oracle_IBase_ID], char(34)),
	 [Oracle_SyncAck_IBase] = convert(varchar(50), [AssetHeaders].[Oracle_SyncAck_IBase], 21),
	 [Oracle_SyncAck_System] = convert(varchar(50), [AssetHeaders].[Oracle_SyncAck_System], 21),
	 [Manufacturer_Name] = concat(char(34), [AssetHeaders].[Manufacturer_Name], char(34)),
	 [Asset_Type] = concat(char(34), [AssetHeaders].[Asset_Type], char(34)),
	 [Item_Number] = concat(char(34), [AssetHeaders].[Item_Number], char(34)),
	 [EnrichmentStatus] = concat(char(34), [AssetHeaders].[EnrichmentStatus], char(34))
from SinglePoint.dbo.AssetHeaders