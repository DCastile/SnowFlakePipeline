select
	 [CountryCode] = concat(char(34), isNull(replace(cast([CountryMultipliers].[CountryCode] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [fkid] = concat(char(34), isNull(replace(cast([CountryMultipliers].[fkid] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Type] = concat(char(34), isNull(replace(cast([CountryMultipliers].[Type] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [RateMultiplier] = concat(char(34), isNull(replace(cast([CountryMultipliers].[RateMultiplier] as nvarchar(max)), char(34), char(0)), '\N'), char(34))
from SinglePoint.dbo.CountryMultipliers with(nolock)