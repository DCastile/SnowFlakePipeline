select
	 [ID] = concat(char(34), [Country_Mapping].[ID], char(34)),
	 [CountryCategoryID] = concat(char(34), [Country_Mapping].[CountryCategoryID], char(34)),
	 [CountryGroupID] = concat(char(34), [Country_Mapping].[CountryGroupID], char(34)),
	 [Category] = concat(char(34), [Country_Mapping].[Category], char(34)),
	 [Group] = concat(char(34), [Country_Mapping].[Group], char(34)),
	 [Country] = concat(char(34), [Country_Mapping].[Country], char(34))
from SinglePoint.dbo.Country_Mapping