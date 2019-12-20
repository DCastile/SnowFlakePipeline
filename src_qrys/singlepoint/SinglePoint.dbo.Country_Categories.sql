select
	 [CountryCategoryID] = concat(char(34), isNull(replace(cast([Country_Categories].[CountryCategoryID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Name] = concat(char(34), isNull(replace(cast([Country_Categories].[Name] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Description] = concat(char(34), isNull(replace(cast([Country_Categories].[Description] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [InActive] = concat(char(34), isNull(replace(cast([Country_Categories].[InActive] as nvarchar(max)), char(34), char(0)), '\N'), char(34))
from SinglePoint.dbo.Country_Categories