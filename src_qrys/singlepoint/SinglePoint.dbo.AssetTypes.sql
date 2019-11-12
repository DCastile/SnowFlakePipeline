select
	 [AssetTypeID] = concat('"', [AssetTypes].[AssetTypeID], '"'),
	 [AssetType] = concat('"', [AssetTypes].[AssetType], '"'),
	 [InactiveFlag] = concat('"', [AssetTypes].[InactiveFlag], '"'),
	 [ChangedByID] = concat('"', [AssetTypes].[ChangedByID], '"'),
	 [LastChanged] = convert(varchar(50), [AssetTypes].[LastChanged], 21),
	 [SMSItemClassKey] = concat('"', [AssetTypes].[SMSItemClassKey], '"'),
	 [ForceProductReviewFlag] = concat('"', [AssetTypes].[ForceProductReviewFlag], '"'),
	 [HideInQuoterFlag] = concat('"', [AssetTypes].[HideInQuoterFlag], '"'),
	 [isTopLevel] = concat('"', [AssetTypes].[isTopLevel], '"')
from SinglePoint.dbo.AssetTypes