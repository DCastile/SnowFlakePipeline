select
	 [CountryGroupID] = quotename([Country_Groups].[CountryGroupID], char(34)),
	 [CountryCategoryID] = quotename([Country_Groups].[CountryCategoryID], char(34)),
	 [Name] = quotename([Country_Groups].[Name], char(34)),
	 [Description] = quotename([Country_Groups].[Description], char(34)),
	 [InActive] = quotename([Country_Groups].[InActive], char(34))
from SinglePoint.dbo.Country_Groups