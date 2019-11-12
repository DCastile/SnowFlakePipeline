select
	 [ID] = concat('"', [Country_Mapping].[ID], '"'),
	 [CountryCategoryID] = concat('"', [Country_Mapping].[CountryCategoryID], '"'),
	 [CountryGroupID] = concat('"', [Country_Mapping].[CountryGroupID], '"'),
	 [Category] = concat('"', [Country_Mapping].[Category], '"'),
	 [Group] = concat('"', [Country_Mapping].[Group], '"'),
	 [Country] = concat('"', [Country_Mapping].[Country], '"')
from SinglePoint.dbo.Country_Mapping