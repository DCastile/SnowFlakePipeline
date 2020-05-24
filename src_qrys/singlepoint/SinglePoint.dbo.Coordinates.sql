select
	 [FKID] = isNull(cast([Coordinates].[FKID] as varchar(36)), '\N'),
	 [Latitude] = isNull(cast([Coordinates].[Latitude] as varchar(36)), '\N'),
	 [Longitude] = isNull(cast([Coordinates].[Longitude] as varchar(36)), '\N'),
	 [Precision] = concat(char(34), isNull(replace(cast([Coordinates].[Precision] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [LastUpdate] = isNull(convert(varchar(50), [Coordinates].[LastUpdate], 21), '\N'),
	 [Source] = concat(char(34), isNull(replace(cast([Coordinates].[Source] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [Accuracy] = isNull(cast([Coordinates].[Accuracy] as varchar(36)), '\N'),
	 [Speed] = isNull(cast([Coordinates].[Speed] as varchar(36)), '\N'),
	 [Bearing] = isNull(cast([Coordinates].[Bearing] as varchar(36)), '\N'),
	 [CreateDate] = isNull(convert(varchar(50), [Coordinates].[CreateDate], 21), '\N'),
	 [ActivityType] = concat(char(34), isNull(replace(cast([Coordinates].[ActivityType] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [ActivityTime] = isNull(convert(varchar(50), [Coordinates].[ActivityTime], 21), '\N'),
	 [ActivityConfidence] = isNull(cast([Coordinates].[ActivityConfidence] as varchar(36)), '\N')
from SinglePoint.dbo.Coordinates with(nolock)