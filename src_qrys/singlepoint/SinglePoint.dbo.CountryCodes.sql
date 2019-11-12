select
	 [Name] = concat('"', [CountryCodes].[Name], '"'),
	 [A2_Code] = concat('"', [CountryCodes].[A2_Code], '"'),
	 [A3_Code] = concat('"', [CountryCodes].[A3_Code], '"'),
	 [Num_Code] = concat('"', [CountryCodes].[Num_Code], '"'),
	 [Vat] = concat('"', [CountryCodes].[Vat], '"'),
	 [Theater] = concat('"', [CountryCodes].[Theater], '"'),
	 [Flag] = concat('"', [CountryCodes].[Flag], '"')
from SinglePoint.dbo.CountryCodes