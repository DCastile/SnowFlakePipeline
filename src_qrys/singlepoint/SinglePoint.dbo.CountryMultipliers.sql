select
	 [CountryCode] = quotename([CountryMultipliers].[CountryCode], char(34)),
	 [fkid] = quotename([CountryMultipliers].[fkid], char(34)),
	 [Type] = quotename([CountryMultipliers].[Type], char(34)),
	 [RateMultiplier] = quotename([CountryMultipliers].[RateMultiplier], char(34))
from SinglePoint.dbo.CountryMultipliers