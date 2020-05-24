select
	 [Country_a2] = concat(char(34), isNull(replace(cast([CountryRegions].[Country_a2] as nvarchar(2)), char(34), char(0)), '\N'), char(34)),
	 [Region] = concat(char(34), isNull(replace(cast([CountryRegions].[Region] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [Description] = concat(char(34), isNull(replace(cast([CountryRegions].[Description] as nvarchar(255)), char(34), char(0)), '\N'), char(34)),
	 [ID] = isNull(cast([CountryRegions].[ID] as varchar(36)), '\N')
from SinglePoint.dbo.CountryRegions with(nolock)