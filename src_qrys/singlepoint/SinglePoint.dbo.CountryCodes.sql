select
	 [Name] = concat(char(34), isNull(cast([CountryCodes].[Name] as nvarchar(max)), '\N'), char(34)),
	 [A2_Code] = concat(char(34), isNull(cast([CountryCodes].[A2_Code] as nvarchar(max)), '\N'), char(34)),
	 [A3_Code] = concat(char(34), isNull(cast([CountryCodes].[A3_Code] as nvarchar(max)), '\N'), char(34)),
	 [Num_Code] = concat(char(34), isNull(cast([CountryCodes].[Num_Code] as nvarchar(max)), '\N'), char(34)),
	 [Vat] = concat(char(34), isNull(cast([CountryCodes].[Vat] as nvarchar(max)), '\N'), char(34)),
	 [Theater] = concat(char(34), isNull(cast([CountryCodes].[Theater] as nvarchar(max)), '\N'), char(34)),
	 [Flag] = concat(char(34), isNull(cast([CountryCodes].[Flag] as nvarchar(max)), '\N'), char(34))
from SinglePoint.dbo.CountryCodes