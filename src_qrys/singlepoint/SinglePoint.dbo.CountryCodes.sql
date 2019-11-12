select
	 [Name] = concat(char(34), [CountryCodes].[Name], char(34)),
	 [A2_Code] = concat(char(34), [CountryCodes].[A2_Code], char(34)),
	 [A3_Code] = concat(char(34), [CountryCodes].[A3_Code], char(34)),
	 [Num_Code] = concat(char(34), [CountryCodes].[Num_Code], char(34)),
	 [Vat] = concat(char(34), [CountryCodes].[Vat], char(34)),
	 [Theater] = concat(char(34), [CountryCodes].[Theater], char(34)),
	 [Flag] = concat(char(34), [CountryCodes].[Flag], char(34))
from SinglePoint.dbo.CountryCodes