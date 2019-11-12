select
	 [AssetHeaderID] = concat(char(34), isNull(cast([AssetLocation].[AssetHeaderID] as nvarchar(max)), '\N'), char(34)),
	 [AssetTagNumber] = concat(char(34), isNull(cast([AssetLocation].[AssetTagNumber] as nvarchar(max)), '\N'), char(34)),
	 [Room] = concat(char(34), isNull(cast([AssetLocation].[Room] as nvarchar(max)), '\N'), char(34)),
	 [Row] = concat(char(34), isNull(cast([AssetLocation].[Row] as nvarchar(max)), '\N'), char(34)),
	 [Rack] = concat(char(34), isNull(cast([AssetLocation].[Rack] as nvarchar(max)), '\N'), char(34)),
	 [Elevation] = concat(char(34), isNull(cast([AssetLocation].[Elevation] as nvarchar(max)), '\N'), char(34)),
	 [SiteAuditID] = concat(char(34), isNull(cast([AssetLocation].[SiteAuditID] as nvarchar(max)), '\N'), char(34)),
	 [UpdatedByUserID] = concat(char(34), isNull(cast([AssetLocation].[UpdatedByUserID] as nvarchar(max)), '\N'), char(34)),
	 [UpdatedDateTime] = isNull(convert(varchar(50), [AssetLocation].[UpdatedDateTime], 21), '\N'),
	 [Building] = concat(char(34), isNull(cast([AssetLocation].[Building] as nvarchar(max)), '\N'), char(34)),
	 [Floor] = concat(char(34), isNull(cast([AssetLocation].[Floor] as nvarchar(max)), '\N'), char(34))
from SinglePoint.dbo.AssetLocation