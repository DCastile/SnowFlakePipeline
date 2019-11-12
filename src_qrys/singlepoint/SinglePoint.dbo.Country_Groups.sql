select
	 [CountryGroupID] = concat(char(34), [Country_Groups].[CountryGroupID], char(34)),
	 [CountryCategoryID] = concat(char(34), [Country_Groups].[CountryCategoryID], char(34)),
	 [Name] = concat(char(34), [Country_Groups].[Name], char(34)),
	 [Description] = concat(char(34), [Country_Groups].[Description], char(34)),
	 [InActive] = concat(char(34), [Country_Groups].[InActive], char(34))
from SinglePoint.dbo.Country_Groups