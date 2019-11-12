select
	 [FKID] = concat('"', [Coordinates].[FKID], '"'),
	 [Latitude] = concat('"', [Coordinates].[Latitude], '"'),
	 [Longitude] = concat('"', [Coordinates].[Longitude], '"'),
	 [Precision] = concat('"', [Coordinates].[Precision], '"'),
	 [LastUpdate] = convert(varchar(50), [Coordinates].[LastUpdate], 21),
	 [Source] = concat('"', [Coordinates].[Source], '"'),
	 [Accuracy] = concat('"', [Coordinates].[Accuracy], '"'),
	 [Speed] = concat('"', [Coordinates].[Speed], '"'),
	 [Bearing] = concat('"', [Coordinates].[Bearing], '"'),
	 [CreateDate] = convert(varchar(50), [Coordinates].[CreateDate], 21),
	 [ActivityType] = concat('"', [Coordinates].[ActivityType], '"'),
	 [ActivityTime] = convert(varchar(50), [Coordinates].[ActivityTime], 21),
	 [ActivityConfidence] = concat('"', [Coordinates].[ActivityConfidence], '"')
from SinglePoint.dbo.Coordinates