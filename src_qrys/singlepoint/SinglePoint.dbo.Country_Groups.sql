select
	 [CountryGroupID] = concat(char(34), isNull(replace(cast([Country_Groups].[CountryGroupID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [CountryCategoryID] = concat(char(34), isNull(replace(cast([Country_Groups].[CountryCategoryID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Name] = concat(char(34), isNull(replace(cast([Country_Groups].[Name] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Description] = concat(char(34), isNull(replace(cast([Country_Groups].[Description] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [InActive] = concat(char(34), isNull(replace(cast([Country_Groups].[InActive] as nvarchar(max)), char(34), char(0)), '\N'), char(34))
from SinglePoint.dbo.Country_Groups with(nolock)