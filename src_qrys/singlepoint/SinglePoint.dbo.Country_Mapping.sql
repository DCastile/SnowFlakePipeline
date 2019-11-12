select
	 [ID] = concat(char(34), isNull(cast([Country_Mapping].[ID] as nvarchar(max)), '\N'), char(34)),
	 [CountryCategoryID] = concat(char(34), isNull(cast([Country_Mapping].[CountryCategoryID] as nvarchar(max)), '\N'), char(34)),
	 [CountryGroupID] = concat(char(34), isNull(cast([Country_Mapping].[CountryGroupID] as nvarchar(max)), '\N'), char(34)),
	 [Category] = concat(char(34), isNull(cast([Country_Mapping].[Category] as nvarchar(max)), '\N'), char(34)),
	 [Group] = concat(char(34), isNull(cast([Country_Mapping].[Group] as nvarchar(max)), '\N'), char(34)),
	 [Country] = concat(char(34), isNull(cast([Country_Mapping].[Country] as nvarchar(max)), '\N'), char(34))
from SinglePoint.dbo.Country_Mapping