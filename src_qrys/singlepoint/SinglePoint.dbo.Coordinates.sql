select
	 [FKID] = quotename([Coordinates].[FKID], char(34)),
	 [Latitude] = quotename([Coordinates].[Latitude], char(34)),
	 [Longitude] = quotename([Coordinates].[Longitude], char(34)),
	 [Precision] = quotename([Coordinates].[Precision], char(34)),
	 [LastUpdate] = convert(varchar(50), [Coordinates].[LastUpdate], 21),
	 [Source] = quotename([Coordinates].[Source], char(34)),
	 [Accuracy] = quotename([Coordinates].[Accuracy], char(34)),
	 [Speed] = quotename([Coordinates].[Speed], char(34)),
	 [Bearing] = quotename([Coordinates].[Bearing], char(34)),
	 [CreateDate] = convert(varchar(50), [Coordinates].[CreateDate], 21),
	 [ActivityType] = quotename([Coordinates].[ActivityType], char(34)),
	 [ActivityTime] = convert(varchar(50), [Coordinates].[ActivityTime], 21),
	 [ActivityConfidence] = quotename([Coordinates].[ActivityConfidence], char(34))
from SinglePoint.dbo.Coordinates