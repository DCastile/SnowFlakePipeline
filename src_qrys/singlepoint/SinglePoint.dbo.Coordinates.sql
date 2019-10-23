select
	 [FKID] = isNull(quotename([FKID], char(34)), '\N'),
	 [Latitude] = isNull(quotename([Latitude], char(34)), '\N'),
	 [Longitude] = isNull(quotename([Longitude], char(34)), '\N'),
	 [Precision] = isNull(quotename([Precision], char(34)), '\N'),
	 [LastUpdate] = isNull(convert(varchar(50), [LastUpdate], 21), '\N'),
	 [Source] = isNull(quotename([Source], char(34)), '\N'),
	 [Accuracy] = isNull(quotename([Accuracy], char(34)), '\N'),
	 [Speed] = isNull(quotename([Speed], char(34)), '\N'),
	 [Bearing] = isNull(quotename([Bearing], char(34)), '\N'),
	 [CreateDate] = isNull(convert(varchar(50), [CreateDate], 21), '\N'),
	 [ActivityType] = isNull(quotename([ActivityType], char(34)), '\N'),
	 [ActivityTime] = isNull(convert(varchar(50), [ActivityTime], 21), '\N'),
	 [ActivityConfidence] = isNull(quotename([ActivityConfidence], char(34)), '\N')
from SinglePoint.dbo.Coordinates