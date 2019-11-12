select
	 [CountryCategoryID] = concat('"', [Country_Categories].[CountryCategoryID], '"'),
	 [Name] = concat('"', [Country_Categories].[Name], '"'),
	 [Description] = concat('"', [Country_Categories].[Description], '"'),
	 [InActive] = concat('"', [Country_Categories].[InActive], '"')
from SinglePoint.dbo.Country_Categories