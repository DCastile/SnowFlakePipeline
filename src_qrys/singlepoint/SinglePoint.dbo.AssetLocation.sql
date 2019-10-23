select
	 [AssetHeaderID] = isNull(quotename([AssetHeaderID], char(34)), '\N'),
	 [AssetTagNumber] = isNull(quotename([AssetTagNumber], char(34)), '\N'),
	 [Room] = isNull(quotename([Room], char(34)), '\N'),
	 [Row] = isNull(quotename([Row], char(34)), '\N'),
	 [Rack] = isNull(quotename([Rack], char(34)), '\N'),
	 [Elevation] = isNull(quotename([Elevation], char(34)), '\N'),
	 [SiteAuditID] = isNull(quotename([SiteAuditID], char(34)), '\N'),
	 [UpdatedByUserID] = isNull(quotename([UpdatedByUserID], char(34)), '\N'),
	 [UpdatedDateTime] = isNull(convert(varchar(50), [UpdatedDateTime], 21), '\N'),
	 [Building] = isNull(quotename([Building], char(34)), '\N'),
	 [Floor] = isNull(quotename([Floor], char(34)), '\N')
from SinglePoint.dbo.AssetLocation