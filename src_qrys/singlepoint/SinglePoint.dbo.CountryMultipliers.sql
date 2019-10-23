select
	 [CountryCode] = isNull(quotename([CountryCode], char(34)), '\N'),
	 [fkid] = isNull(quotename([fkid], char(34)), '\N'),
	 [Type] = isNull(quotename([Type], char(34)), '\N'),
	 [RateMultiplier] = isNull(quotename([RateMultiplier], char(34)), '\N')
from SinglePoint.dbo.CountryMultipliers