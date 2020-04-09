select
	 [AssetTypeID] = isNull(cast([AssetTypes].[AssetTypeID] as varchar(36)), '\N'),
	 [AssetType] = concat(char(34), isNull(replace(cast([AssetTypes].[AssetType] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [InactiveFlag] = isNull(cast([AssetTypes].[InactiveFlag] as varchar(36)), '\N'),
	 [ChangedByID] = isNull(cast([AssetTypes].[ChangedByID] as varchar(36)), '\N'),
	 [LastChanged] = isNull(convert(varchar(50), [AssetTypes].[LastChanged], 21), '\N'),
	 [SMSItemClassKey] = isNull(cast([AssetTypes].[SMSItemClassKey] as varchar(36)), '\N'),
	 [ForceProductReviewFlag] = isNull(cast([AssetTypes].[ForceProductReviewFlag] as varchar(36)), '\N'),
	 [HideInQuoterFlag] = isNull(cast([AssetTypes].[HideInQuoterFlag] as varchar(36)), '\N'),
	 [isTopLevel] = isNull(cast([AssetTypes].[isTopLevel] as varchar(36)), '\N')
from SinglePoint.dbo.AssetTypes