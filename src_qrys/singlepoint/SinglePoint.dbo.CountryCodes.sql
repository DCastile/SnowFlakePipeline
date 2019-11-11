select
	 [Name] = quotename([CountryCodes].[Name], char(34)),
	 [A2_Code] = quotename([CountryCodes].[A2_Code], char(34)),
	 [A3_Code] = quotename([CountryCodes].[A3_Code], char(34)),
	 [Num_Code] = quotename([CountryCodes].[Num_Code], char(34)),
	 [Vat] = quotename([CountryCodes].[Vat], char(34)),
	 [Theater] = quotename([CountryCodes].[Theater], char(34)),
	 [Flag] = quotename([CountryCodes].[Flag], char(34))
from SinglePoint.dbo.CountryCodes