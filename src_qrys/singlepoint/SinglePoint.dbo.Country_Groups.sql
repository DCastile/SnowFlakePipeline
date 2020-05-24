select
	 [CountryGroupID] = isNull(cast([Country_Groups].[CountryGroupID] as varchar(36)), '\N'),
	 [CountryCategoryID] = isNull(cast([Country_Groups].[CountryCategoryID] as varchar(36)), '\N'),
	 [Name] = concat(char(34), isNull(replace(cast([Country_Groups].[Name] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [Description] = concat(char(34), isNull(replace(cast([Country_Groups].[Description] as nvarchar(500)), char(34), char(0)), '\N'), char(34)),
	 [InActive] = isNull(cast([Country_Groups].[InActive] as varchar(36)), '\N')
from SinglePoint.dbo.Country_Groups with(nolock)