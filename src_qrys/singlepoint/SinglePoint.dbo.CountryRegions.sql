select
	 [Country_a2] = concat(char(34), isNull(cast([CountryRegions].[Country_a2] as nvarchar(max)), '\N'), char(34)),
	 [Region] = concat(char(34), isNull(cast([CountryRegions].[Region] as nvarchar(max)), '\N'), char(34)),
	 [Description] = concat(char(34), isNull(cast([CountryRegions].[Description] as nvarchar(max)), '\N'), char(34)),
	 [ID] = concat(char(34), isNull(cast([CountryRegions].[ID] as nvarchar(max)), '\N'), char(34))
from SinglePoint.dbo.CountryRegions