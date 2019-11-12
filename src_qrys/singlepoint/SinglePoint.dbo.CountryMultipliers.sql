select
	 [CountryCode] = concat(char(34), [CountryMultipliers].[CountryCode], char(34)),
	 [fkid] = concat(char(34), [CountryMultipliers].[fkid], char(34)),
	 [Type] = concat(char(34), [CountryMultipliers].[Type], char(34)),
	 [RateMultiplier] = concat(char(34), [CountryMultipliers].[RateMultiplier], char(34))
from SinglePoint.dbo.CountryMultipliers