select
	 [AssetHeaderID] = concat(char(34), isNull(replace(cast([AssetLocation].[AssetHeaderID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [AssetTagNumber] = concat(char(34), isNull(replace(cast([AssetLocation].[AssetTagNumber] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Room] = concat(char(34), isNull(replace(cast([AssetLocation].[Room] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Row] = concat(char(34), isNull(replace(cast([AssetLocation].[Row] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Rack] = concat(char(34), isNull(replace(cast([AssetLocation].[Rack] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Elevation] = concat(char(34), isNull(replace(cast([AssetLocation].[Elevation] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SiteAuditID] = concat(char(34), isNull(replace(cast([AssetLocation].[SiteAuditID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [UpdatedByUserID] = concat(char(34), isNull(replace(cast([AssetLocation].[UpdatedByUserID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [UpdatedDateTime] = isNull(convert(varchar(50), [AssetLocation].[UpdatedDateTime], 21), '\N'),
	 [Building] = concat(char(34), isNull(replace(cast([AssetLocation].[Building] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Floor] = concat(char(34), isNull(replace(cast([AssetLocation].[Floor] as nvarchar(max)), char(34), char(0)), '\N'), char(34))
from SinglePoint.dbo.AssetLocation