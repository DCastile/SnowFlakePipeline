select
	 [ID] = quotename([Country_Mapping].[ID], char(34)),
	 [CountryCategoryID] = quotename([Country_Mapping].[CountryCategoryID], char(34)),
	 [CountryGroupID] = quotename([Country_Mapping].[CountryGroupID], char(34)),
	 [Category] = quotename([Country_Mapping].[Category], char(34)),
	 [Group] = quotename([Country_Mapping].[Group], char(34)),
	 [Country] = quotename([Country_Mapping].[Country], char(34))
from SinglePoint.dbo.Country_Mapping