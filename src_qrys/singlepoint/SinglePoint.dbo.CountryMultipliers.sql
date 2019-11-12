select
	 [CountryCode] = concat('"', [CountryMultipliers].[CountryCode], '"'),
	 [fkid] = concat('"', [CountryMultipliers].[fkid], '"'),
	 [Type] = concat('"', [CountryMultipliers].[Type], '"'),
	 [RateMultiplier] = concat('"', [CountryMultipliers].[RateMultiplier], '"')
from SinglePoint.dbo.CountryMultipliers