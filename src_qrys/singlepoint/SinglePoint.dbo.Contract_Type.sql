select
	 [Country_a2] = quotename([CountryRegions].[Country_a2], char(34)),
	 [Region] = quotename([CountryRegions].[Region], char(34)),
	 [Description] = quotename([CountryRegions].[Description], char(34)),
	 [ID] = quotename([CountryRegions].[ID], char(34))
from SinglePoint.dbo.CountryRegions