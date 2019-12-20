select
	 [Country_a2] = concat(char(34), isNull(replace(cast([CountryRegions].[Country_a2] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Region] = concat(char(34), isNull(replace(cast([CountryRegions].[Region] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Description] = concat(char(34), isNull(replace(cast([CountryRegions].[Description] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ID] = concat(char(34), isNull(replace(cast([CountryRegions].[ID] as nvarchar(max)), char(34), char(0)), '\N'), char(34))
from SinglePoint.dbo.CountryRegions