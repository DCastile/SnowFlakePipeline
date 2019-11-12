select
	 [FKID] = concat(char(34), isNull(replace(cast([Coordinates].[FKID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Latitude] = concat(char(34), isNull(replace(cast([Coordinates].[Latitude] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Longitude] = concat(char(34), isNull(replace(cast([Coordinates].[Longitude] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Precision] = concat(char(34), isNull(replace(cast([Coordinates].[Precision] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [LastUpdate] = isNull(convert(varchar(50), [Coordinates].[LastUpdate], 21), '\N'),
	 [Source] = concat(char(34), isNull(replace(cast([Coordinates].[Source] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Accuracy] = concat(char(34), isNull(replace(cast([Coordinates].[Accuracy] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Speed] = concat(char(34), isNull(replace(cast([Coordinates].[Speed] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Bearing] = concat(char(34), isNull(replace(cast([Coordinates].[Bearing] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [CreateDate] = isNull(convert(varchar(50), [Coordinates].[CreateDate], 21), '\N'),
	 [ActivityType] = concat(char(34), isNull(replace(cast([Coordinates].[ActivityType] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ActivityTime] = isNull(convert(varchar(50), [Coordinates].[ActivityTime], 21), '\N'),
	 [ActivityConfidence] = concat(char(34), isNull(replace(cast([Coordinates].[ActivityConfidence] as nvarchar(max)), char(34), char(0)), '\N'), char(34))
from SinglePoint.dbo.Coordinates