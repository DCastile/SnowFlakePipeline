select
	 [Name] = concat(char(34), isNull(replace(cast([CountryCodes].[Name] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [A2_Code] = concat(char(34), isNull(replace(cast([CountryCodes].[A2_Code] as nvarchar(2)), char(34), char(0)), '\N'), char(34)),
	 [A3_Code] = concat(char(34), isNull(replace(cast([CountryCodes].[A3_Code] as nvarchar(3)), char(34), char(0)), '\N'), char(34)),
	 [Num_Code] = isNull(cast([CountryCodes].[Num_Code] as varchar(36)), '\N'),
	 [Vat] = isNull(cast([CountryCodes].[Vat] as varchar(36)), '\N'),
	 [Theater] = concat(char(34), isNull(replace(cast([CountryCodes].[Theater] as nvarchar(100)), char(34), char(0)), '\N'), char(34)),
	 [Flag] = concat(char(34), isNull(replace(cast([CountryCodes].[Flag] as nvarchar(-1)), char(34), char(0)), '\N'), char(34))
from SinglePoint.dbo.CountryCodes