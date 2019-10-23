select
	 [CountryGroupID] = isNull(quotename([CountryGroupID], char(34)), '\N'),
	 [CountryCategoryID] = isNull(quotename([CountryCategoryID], char(34)), '\N'),
	 [Name] = isNull(quotename([Name], char(34)), '\N'),
	 [Description] = isNull(quotename([Description], char(34)), '\N'),
	 [InActive] = isNull(quotename([InActive], char(34)), '\N')
from SinglePoint.dbo.Country_Groups