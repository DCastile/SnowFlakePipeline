select
	 [Country_a2] = concat(char(34), [CountryRegions].[Country_a2], char(34)),
	 [Region] = concat(char(34), [CountryRegions].[Region], char(34)),
	 [Description] = concat(char(34), [CountryRegions].[Description], char(34)),
	 [ID] = concat(char(34), [CountryRegions].[ID], char(34))
from SinglePoint.dbo.CountryRegions