select
	 [CountryGroupID] = concat(char(34), isNull(cast([Country_Groups].[CountryGroupID] as nvarchar(max)), '\N'), char(34)),
	 [CountryCategoryID] = concat(char(34), isNull(cast([Country_Groups].[CountryCategoryID] as nvarchar(max)), '\N'), char(34)),
	 [Name] = concat(char(34), isNull(cast([Country_Groups].[Name] as nvarchar(max)), '\N'), char(34)),
	 [Description] = concat(char(34), isNull(cast([Country_Groups].[Description] as nvarchar(max)), '\N'), char(34)),
	 [InActive] = concat(char(34), isNull(cast([Country_Groups].[InActive] as nvarchar(max)), '\N'), char(34))
from SinglePoint.dbo.Country_Groups