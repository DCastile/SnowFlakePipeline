select
	 [AssetTypeID] = concat(char(34), isNull(cast([AssetTypes].[AssetTypeID] as nvarchar(max)), '\N'), char(34)),
	 [AssetType] = concat(char(34), isNull(cast([AssetTypes].[AssetType] as nvarchar(max)), '\N'), char(34)),
	 [InactiveFlag] = concat(char(34), isNull(cast([AssetTypes].[InactiveFlag] as nvarchar(max)), '\N'), char(34)),
	 [ChangedByID] = concat(char(34), isNull(cast([AssetTypes].[ChangedByID] as nvarchar(max)), '\N'), char(34)),
	 [LastChanged] = isNull(convert(varchar(50), [AssetTypes].[LastChanged], 21), '\N'),
	 [SMSItemClassKey] = concat(char(34), isNull(cast([AssetTypes].[SMSItemClassKey] as nvarchar(max)), '\N'), char(34)),
	 [ForceProductReviewFlag] = concat(char(34), isNull(cast([AssetTypes].[ForceProductReviewFlag] as nvarchar(max)), '\N'), char(34)),
	 [HideInQuoterFlag] = concat(char(34), isNull(cast([AssetTypes].[HideInQuoterFlag] as nvarchar(max)), '\N'), char(34)),
	 [isTopLevel] = concat(char(34), isNull(cast([AssetTypes].[isTopLevel] as nvarchar(max)), '\N'), char(34))
from SinglePoint.dbo.AssetTypes