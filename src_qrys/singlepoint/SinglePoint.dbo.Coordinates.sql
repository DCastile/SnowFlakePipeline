select
	 [FKID] = concat(char(34), [Coordinates].[FKID], char(34)),
	 [Latitude] = concat(char(34), [Coordinates].[Latitude], char(34)),
	 [Longitude] = concat(char(34), [Coordinates].[Longitude], char(34)),
	 [Precision] = concat(char(34), [Coordinates].[Precision], char(34)),
	 [LastUpdate] = convert(varchar(50), [Coordinates].[LastUpdate], 21),
	 [Source] = concat(char(34), [Coordinates].[Source], char(34)),
	 [Accuracy] = concat(char(34), [Coordinates].[Accuracy], char(34)),
	 [Speed] = concat(char(34), [Coordinates].[Speed], char(34)),
	 [Bearing] = concat(char(34), [Coordinates].[Bearing], char(34)),
	 [CreateDate] = convert(varchar(50), [Coordinates].[CreateDate], 21),
	 [ActivityType] = concat(char(34), [Coordinates].[ActivityType], char(34)),
	 [ActivityTime] = convert(varchar(50), [Coordinates].[ActivityTime], 21),
	 [ActivityConfidence] = concat(char(34), [Coordinates].[ActivityConfidence], char(34))
from SinglePoint.dbo.Coordinates