select
	 [AssetHeaderID] = isNull(cast([AssetLocation].[AssetHeaderID] as varchar(36)), '\N'),
	 [AssetTagNumber] = concat(char(34), isNull(replace(cast([AssetLocation].[AssetTagNumber] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [Room] = concat(char(34), isNull(replace(cast([AssetLocation].[Room] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [Row] = concat(char(34), isNull(replace(cast([AssetLocation].[Row] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [Rack] = concat(char(34), isNull(replace(cast([AssetLocation].[Rack] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [Elevation] = concat(char(34), isNull(replace(cast([AssetLocation].[Elevation] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [SiteAuditID] = isNull(cast([AssetLocation].[SiteAuditID] as varchar(36)), '\N'),
	 [UpdatedByUserID] = isNull(cast([AssetLocation].[UpdatedByUserID] as varchar(36)), '\N'),
	 [UpdatedDateTime] = isNull(convert(varchar(50), [AssetLocation].[UpdatedDateTime], 21), '\N'),
	 [Building] = concat(char(34), isNull(replace(cast([AssetLocation].[Building] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [Floor] = concat(char(34), isNull(replace(cast([AssetLocation].[Floor] as nvarchar(50)), char(34), char(0)), '\N'), char(34))
from SinglePoint.dbo.AssetLocation with(nolock)