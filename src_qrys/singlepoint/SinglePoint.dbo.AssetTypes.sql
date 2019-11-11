select
	 [AssetTypeID] = quotename([AssetTypes].[AssetTypeID], char(34)),
	 [AssetType] = quotename([AssetTypes].[AssetType], char(34)),
	 [InactiveFlag] = quotename([AssetTypes].[InactiveFlag], char(34)),
	 [ChangedByID] = quotename([AssetTypes].[ChangedByID], char(34)),
	 [LastChanged] = convert(varchar(50), [AssetTypes].[LastChanged], 21),
	 [SMSItemClassKey] = quotename([AssetTypes].[SMSItemClassKey], char(34)),
	 [ForceProductReviewFlag] = quotename([AssetTypes].[ForceProductReviewFlag], char(34)),
	 [HideInQuoterFlag] = quotename([AssetTypes].[HideInQuoterFlag], char(34)),
	 [isTopLevel] = quotename([AssetTypes].[isTopLevel], char(34))
from SinglePoint.dbo.AssetTypes