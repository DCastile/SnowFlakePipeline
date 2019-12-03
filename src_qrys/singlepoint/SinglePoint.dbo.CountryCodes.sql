select
	 [Name] = concat(char(34), isNull(replace(cast([CountryCodes].[Name] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [A2_Code] = concat(char(34), isNull(replace(cast([CountryCodes].[A2_Code] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [A3_Code] = concat(char(34), isNull(replace(cast([CountryCodes].[A3_Code] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Num_Code] = concat(char(34), isNull(replace(cast([CountryCodes].[Num_Code] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Vat] = concat(char(34), isNull(replace(cast([CountryCodes].[Vat] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Theater] = concat(char(34), isNull(replace(cast([CountryCodes].[Theater] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Flag] = concat(char(34), isNull(replace(cast([CountryCodes].[Flag] as nvarchar(max)), char(34), char(0)), '\N'), char(34))
from SinglePoint.dbo.CountryCodes with(nolock)