select
	 [CountryCategoryID] = isNull(cast([Country_Categories].[CountryCategoryID] as varchar(36)), '\N'),
	 [Name] = concat(char(34), isNull(replace(cast([Country_Categories].[Name] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [Description] = concat(char(34), isNull(replace(cast([Country_Categories].[Description] as nvarchar(500)), char(34), char(0)), '\N'), char(34)),
	 [InActive] = isNull(cast([Country_Categories].[InActive] as varchar(36)), '\N')
from SinglePoint.dbo.Country_Categories