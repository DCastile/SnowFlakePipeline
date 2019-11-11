select
	 [CountryCategoryID] = quotename([Country_Categories].[CountryCategoryID], char(34)),
	 [Name] = quotename([Country_Categories].[Name], char(34)),
	 [Description] = quotename([Country_Categories].[Description], char(34)),
	 [InActive] = quotename([Country_Categories].[InActive], char(34))
from SinglePoint.dbo.Country_Categories