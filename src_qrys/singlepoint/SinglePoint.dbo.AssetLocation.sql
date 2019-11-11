select
	 [AssetHeaderID] = quotename([AssetLocation].[AssetHeaderID], char(34)),
	 [AssetTagNumber] = quotename([AssetLocation].[AssetTagNumber], char(34)),
	 [Room] = quotename([AssetLocation].[Room], char(34)),
	 [Row] = quotename([AssetLocation].[Row], char(34)),
	 [Rack] = quotename([AssetLocation].[Rack], char(34)),
	 [Elevation] = quotename([AssetLocation].[Elevation], char(34)),
	 [SiteAuditID] = quotename([AssetLocation].[SiteAuditID], char(34)),
	 [UpdatedByUserID] = quotename([AssetLocation].[UpdatedByUserID], char(34)),
	 [UpdatedDateTime] = convert(varchar(50), [AssetLocation].[UpdatedDateTime], 21),
	 [Building] = quotename([AssetLocation].[Building], char(34)),
	 [Floor] = quotename([AssetLocation].[Floor], char(34))
from SinglePoint.dbo.AssetLocation