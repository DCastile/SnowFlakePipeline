select
	 [CountryCode] = concat(char(34), isNull(cast([CountryMultipliers].[CountryCode] as nvarchar(max)), '\N'), char(34)),
	 [fkid] = concat(char(34), isNull(cast([CountryMultipliers].[fkid] as nvarchar(max)), '\N'), char(34)),
	 [Type] = concat(char(34), isNull(cast([CountryMultipliers].[Type] as nvarchar(max)), '\N'), char(34)),
	 [RateMultiplier] = concat(char(34), isNull(cast([CountryMultipliers].[RateMultiplier] as nvarchar(max)), '\N'), char(34))
from SinglePoint.dbo.CountryMultipliers