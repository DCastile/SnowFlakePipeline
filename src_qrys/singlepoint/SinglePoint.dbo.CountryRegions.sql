select
	 [Country_a2] = concat('"', [CountryRegions].[Country_a2], '"'),
	 [Region] = concat('"', [CountryRegions].[Region], '"'),
	 [Description] = concat('"', [CountryRegions].[Description], '"'),
	 [ID] = concat('"', [CountryRegions].[ID], '"')
from SinglePoint.dbo.CountryRegions