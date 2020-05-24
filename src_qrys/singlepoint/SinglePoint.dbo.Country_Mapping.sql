select
	 [ID] = isNull(cast([Country_Mapping].[ID] as varchar(36)), '\N'),
	 [CountryCategoryID] = isNull(cast([Country_Mapping].[CountryCategoryID] as varchar(36)), '\N'),
	 [CountryGroupID] = isNull(cast([Country_Mapping].[CountryGroupID] as varchar(36)), '\N'),
	 [Category] = concat(char(34), isNull(replace(cast([Country_Mapping].[Category] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [Group] = concat(char(34), isNull(replace(cast([Country_Mapping].[Group] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [Country] = concat(char(34), isNull(replace(cast([Country_Mapping].[Country] as nvarchar(3)), char(34), char(0)), '\N'), char(34))
from SinglePoint.dbo.Country_Mapping with(nolock)