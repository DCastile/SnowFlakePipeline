select
	 [AssetHeaderID] = concat(char(34), [AssetLocation].[AssetHeaderID], char(34)),
	 [AssetTagNumber] = concat(char(34), [AssetLocation].[AssetTagNumber], char(34)),
	 [Room] = concat(char(34), [AssetLocation].[Room], char(34)),
	 [Row] = concat(char(34), [AssetLocation].[Row], char(34)),
	 [Rack] = concat(char(34), [AssetLocation].[Rack], char(34)),
	 [Elevation] = concat(char(34), [AssetLocation].[Elevation], char(34)),
	 [SiteAuditID] = concat(char(34), [AssetLocation].[SiteAuditID], char(34)),
	 [UpdatedByUserID] = concat(char(34), [AssetLocation].[UpdatedByUserID], char(34)),
	 [UpdatedDateTime] = convert(varchar(50), [AssetLocation].[UpdatedDateTime], 21),
	 [Building] = concat(char(34), [AssetLocation].[Building], char(34)),
	 [Floor] = concat(char(34), [AssetLocation].[Floor], char(34))
from SinglePoint.dbo.AssetLocation