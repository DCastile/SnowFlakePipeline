select
	 [ItemGuid] = concat(char(34), isNull(replace(cast([tqoItem].[ItemGuid] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [MASItemKey] = concat(char(34), isNull(replace(cast([tqoItem].[MASItemKey] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [CompanyGuid] = concat(char(34), isNull(replace(cast([tqoItem].[CompanyGuid] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [MASItemClassKey] = concat(char(34), isNull(replace(cast([tqoItem].[MASItemClassKey] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ItemID] = concat(char(34), isNull(replace(cast([tqoItem].[ItemID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ItemType] = concat(char(34), isNull(replace(cast([tqoItem].[ItemType] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ShortDesc] = concat(char(34), isNull(replace(cast([tqoItem].[ShortDesc] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [LongDesc] = concat(char(34), isNull(replace(cast([tqoItem].[LongDesc] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [TrackMeth] = concat(char(34), isNull(replace(cast([tqoItem].[TrackMeth] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [NextAssembly_UserFld5] = concat(char(34), isNull(replace(cast([tqoItem].[NextAssembly_UserFld5] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [References_UserFld6] = concat(char(34), isNull(replace(cast([tqoItem].[References_UserFld6] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Rate] = concat(char(34), isNull(replace(cast([tqoItem].[Rate] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SpareRangeKey] = concat(char(34), isNull(replace(cast([tqoItem].[SpareRangeKey] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [WrtyRate] = concat(char(34), isNull(replace(cast([tqoItem].[WrtyRate] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ChangedByID] = concat(char(34), isNull(replace(cast([tqoItem].[ChangedByID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [LastChanged] = isNull(convert(varchar(50), [tqoItem].[LastChanged], 21), '\N'),
	 [CreateByID] = concat(char(34), isNull(replace(cast([tqoItem].[CreateByID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [CreateDate] = isNull(convert(varchar(50), [tqoItem].[CreateDate], 21), '\N'),
	 [TopLevelFlag] = concat(char(34), isNull(replace(cast([tqoItem].[TopLevelFlag] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [QuotableFlag] = concat(char(34), isNull(replace(cast([tqoItem].[QuotableFlag] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Source] = concat(char(34), isNull(replace(cast([tqoItem].[Source] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SourceFKID] = concat(char(34), isNull(replace(cast([tqoItem].[SourceFKID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [RISCFlag] = concat(char(34), isNull(replace(cast([tqoItem].[RISCFlag] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [RateUpdateDate] = isNull(convert(varchar(50), [tqoItem].[RateUpdateDate], 21), '\N'),
	 [RateUpdateByID] = concat(char(34), isNull(replace(cast([tqoItem].[RateUpdateByID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [BOMNotReqdFlag] = concat(char(34), isNull(replace(cast([tqoItem].[BOMNotReqdFlag] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [RateNotReqdFlag] = concat(char(34), isNull(replace(cast([tqoItem].[RateNotReqdFlag] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Comment] = concat(char(34), isNull(replace(cast([tqoItem].[Comment] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [MfgCodeID] = concat(char(34), isNull(replace(cast([tqoItem].[MfgCodeID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [DefaultSrvDealer] = concat(char(34), isNull(replace(cast([tqoItem].[DefaultSrvDealer] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [GenericItemFlag] = concat(char(34), isNull(replace(cast([tqoItem].[GenericItemFlag] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ItemExportDate] = isNull(convert(varchar(50), [tqoItem].[ItemExportDate], 21), '\N'),
	 [PricingReviewFlag] = concat(char(34), isNull(replace(cast([tqoItem].[PricingReviewFlag] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [NotSupportedFlag] = concat(char(34), isNull(replace(cast([tqoItem].[NotSupportedFlag] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [PrimaryItemGuid] = concat(char(34), isNull(replace(cast([tqoItem].[PrimaryItemGuid] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [MASCommodityCodeKey] = concat(char(34), isNull(replace(cast([tqoItem].[MASCommodityCodeKey] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ItemIDAlphaNum] = concat(char(34), isNull(replace(cast([tqoItem].[ItemIDAlphaNum] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SourceProc] = concat(char(34), isNull(replace(cast([tqoItem].[SourceProc] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [CallCtrNote] = concat(char(34), isNull(replace(cast([tqoItem].[CallCtrNote] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Tier2Ref] = concat(char(34), isNull(replace(cast([tqoItem].[Tier2Ref] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [RoHSCompliant] = concat(char(34), isNull(replace(cast([tqoItem].[RoHSCompliant] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Scrap] = concat(char(34), isNull(replace(cast([tqoItem].[Scrap] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ReorderItem] = concat(char(34), isNull(replace(cast([tqoItem].[ReorderItem] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [CallHomeSupported] = concat(char(34), isNull(replace(cast([tqoItem].[CallHomeSupported] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SAP_Product_Key] = concat(char(34), isNull(replace(cast([tqoItem].[SAP_Product_Key] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [MaterialGroup] = concat(char(34), isNull(replace(cast([tqoItem].[MaterialGroup] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [MaterialType] = concat(char(34), isNull(replace(cast([tqoItem].[MaterialType] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [AssetTypeID] = concat(char(34), isNull(replace(cast([tqoItem].[AssetTypeID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [InactiveFlag] = concat(char(34), isNull(replace(cast([tqoItem].[InactiveFlag] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [InactiveDate] = isNull(convert(varchar(50), [tqoItem].[InactiveDate], 21), '\N'),
	 [ProductHierarchy] = concat(char(34), isNull(replace(cast([tqoItem].[ProductHierarchy] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ProductLine] = concat(char(34), isNull(replace(cast([tqoItem].[ProductLine] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Portfolio] = concat(char(34), isNull(replace(cast([tqoItem].[Portfolio] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [LineOfBusiness] = concat(char(34), isNull(replace(cast([tqoItem].[LineOfBusiness] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [AssetType] = concat(char(34), isNull(replace(cast([tqoItem].[AssetType] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Manufacturer] = concat(char(34), isNull(replace(cast([tqoItem].[Manufacturer] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Family] = concat(char(34), isNull(replace(cast([tqoItem].[Family] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Platform] = concat(char(34), isNull(replace(cast([tqoItem].[Platform] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [PortfolioID] = concat(char(34), isNull(replace(cast([tqoItem].[PortfolioID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [LineOfBusinessID] = concat(char(34), isNull(replace(cast([tqoItem].[LineOfBusinessID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [FamilyID] = concat(char(34), isNull(replace(cast([tqoItem].[FamilyID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [PlatformID] = concat(char(34), isNull(replace(cast([tqoItem].[PlatformID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Oracle_Use_ID] = concat(char(34), isNull(replace(cast([tqoItem].[Oracle_Use_ID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Oracle_New_ID] = concat(char(34), isNull(replace(cast([tqoItem].[Oracle_New_ID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Oracle_Consignment_ID] = concat(char(34), isNull(replace(cast([tqoItem].[Oracle_Consignment_ID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Oracle_ID] = concat(char(34), isNull(replace(cast([tqoItem].[Oracle_ID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ItemNumber] = concat(char(34), isNull(replace(cast([tqoItem].[ItemNumber] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [isComplex] = concat(char(34), isNull(replace(cast([tqoItem].[isComplex] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [DeviceType] = concat(char(34), isNull(replace(cast([tqoItem].[DeviceType] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [isHighRisk] = concat(char(34), isNull(replace(cast([tqoItem].[isHighRisk] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [CallHomeEligibility] = concat(char(34), isNull(replace(cast([tqoItem].[CallHomeEligibility] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [bandedFlag] = concat(char(34), isNull(replace(cast([tqoItem].[bandedFlag] as nvarchar(max)), char(34), char(0)), '\N'), char(34))
from SinglePoint.dbo.tqoItem