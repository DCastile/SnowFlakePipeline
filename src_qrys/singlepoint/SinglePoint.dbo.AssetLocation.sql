select
	 [AssetHeaderID] = concat('"', [AssetLocation].[AssetHeaderID], '"'),
	 [AssetTagNumber] = concat('"', [AssetLocation].[AssetTagNumber], '"'),
	 [Room] = concat('"', [AssetLocation].[Room], '"'),
	 [Row] = concat('"', [AssetLocation].[Row], '"'),
	 [Rack] = concat('"', [AssetLocation].[Rack], '"'),
	 [Elevation] = concat('"', [AssetLocation].[Elevation], '"'),
	 [SiteAuditID] = concat('"', [AssetLocation].[SiteAuditID], '"'),
	 [UpdatedByUserID] = concat('"', [AssetLocation].[UpdatedByUserID], '"'),
	 [UpdatedDateTime] = convert(varchar(50), [AssetLocation].[UpdatedDateTime], 21),
	 [Building] = concat('"', [AssetLocation].[Building], '"'),
	 [Floor] = concat('"', [AssetLocation].[Floor], '"')
from SinglePoint.dbo.AssetLocation