select
	 [FKID] = concat(char(34), isNull(cast([Coordinates].[FKID] as nvarchar(max)), '\N'), char(34)),
	 [Latitude] = concat(char(34), isNull(cast([Coordinates].[Latitude] as nvarchar(max)), '\N'), char(34)),
	 [Longitude] = concat(char(34), isNull(cast([Coordinates].[Longitude] as nvarchar(max)), '\N'), char(34)),
	 [Precision] = concat(char(34), isNull(cast([Coordinates].[Precision] as nvarchar(max)), '\N'), char(34)),
	 [LastUpdate] = isNull(convert(varchar(50), [Coordinates].[LastUpdate], 21), '\N'),
	 [Source] = concat(char(34), isNull(cast([Coordinates].[Source] as nvarchar(max)), '\N'), char(34)),
	 [Accuracy] = concat(char(34), isNull(cast([Coordinates].[Accuracy] as nvarchar(max)), '\N'), char(34)),
	 [Speed] = concat(char(34), isNull(cast([Coordinates].[Speed] as nvarchar(max)), '\N'), char(34)),
	 [Bearing] = concat(char(34), isNull(cast([Coordinates].[Bearing] as nvarchar(max)), '\N'), char(34)),
	 [CreateDate] = isNull(convert(varchar(50), [Coordinates].[CreateDate], 21), '\N'),
	 [ActivityType] = concat(char(34), isNull(cast([Coordinates].[ActivityType] as nvarchar(max)), '\N'), char(34)),
	 [ActivityTime] = isNull(convert(varchar(50), [Coordinates].[ActivityTime], 21), '\N'),
	 [ActivityConfidence] = concat(char(34), isNull(cast([Coordinates].[ActivityConfidence] as nvarchar(max)), '\N'), char(34))
from SinglePoint.dbo.Coordinates