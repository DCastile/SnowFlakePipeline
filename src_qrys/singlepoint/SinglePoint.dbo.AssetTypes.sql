select
	 [AssetTypeID] = concat(char(34), [AssetTypes].[AssetTypeID], char(34)),
	 [AssetType] = concat(char(34), [AssetTypes].[AssetType], char(34)),
	 [InactiveFlag] = concat(char(34), [AssetTypes].[InactiveFlag], char(34)),
	 [ChangedByID] = concat(char(34), [AssetTypes].[ChangedByID], char(34)),
	 [LastChanged] = convert(varchar(50), [AssetTypes].[LastChanged], 21),
	 [SMSItemClassKey] = concat(char(34), [AssetTypes].[SMSItemClassKey], char(34)),
	 [ForceProductReviewFlag] = concat(char(34), [AssetTypes].[ForceProductReviewFlag], char(34)),
	 [HideInQuoterFlag] = concat(char(34), [AssetTypes].[HideInQuoterFlag], char(34)),
	 [isTopLevel] = concat(char(34), [AssetTypes].[isTopLevel], char(34))
from SinglePoint.dbo.AssetTypes