select
	 [CountryGroupID] = concat('"', [Country_Groups].[CountryGroupID], '"'),
	 [CountryCategoryID] = concat('"', [Country_Groups].[CountryCategoryID], '"'),
	 [Name] = concat('"', [Country_Groups].[Name], '"'),
	 [Description] = concat('"', [Country_Groups].[Description], '"'),
	 [InActive] = concat('"', [Country_Groups].[InActive], '"')
from SinglePoint.dbo.Country_Groups