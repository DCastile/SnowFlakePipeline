select
	 [CountryCategoryID] = concat(char(34), [Country_Categories].[CountryCategoryID], char(34)),
	 [Name] = concat(char(34), [Country_Categories].[Name], char(34)),
	 [Description] = concat(char(34), [Country_Categories].[Description], char(34)),
	 [InActive] = concat(char(34), [Country_Categories].[InActive], char(34))
from SinglePoint.dbo.Country_Categories