select
	 [CountryCode] = concat(char(34), isNull(replace(cast([CountryMultipliers].[CountryCode] as nvarchar(3)), char(34), char(0)), '\N'), char(34)),
	 [fkid] = isNull(cast([CountryMultipliers].[fkid] as varchar(36)), '\N'),
	 [Type] = concat(char(34), isNull(replace(cast([CountryMultipliers].[Type] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [RateMultiplier] = isNull(cast([CountryMultipliers].[RateMultiplier] as varchar(36)), '\N')
from SinglePoint.dbo.CountryMultipliers with(nolock)