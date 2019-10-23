select
	 [CountryCategoryID] = isNull(quotename([CountryCategoryID], char(34)), '\N'),
	 [Name] = isNull(quotename([Name], char(34)), '\N'),
	 [Description] = isNull(quotename([Description], char(34)), '\N'),
	 [InActive] = isNull(quotename([InActive], char(34)), '\N')
from SinglePoint.dbo.Country_Categories