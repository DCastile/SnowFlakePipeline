select
	 [Name] = isNull(quotename([Name], char(34)), '\N'),
	 [A2_Code] = isNull(quotename([A2_Code], char(34)), '\N'),
	 [A3_Code] = isNull(quotename([A3_Code], char(34)), '\N'),
	 [Num_Code] = isNull(quotename([Num_Code], char(34)), '\N'),
	 [Vat] = isNull(quotename([Vat], char(34)), '\N'),
	 [Theater] = isNull(quotename([Theater], char(34)), '\N'),
	 [Flag] = isNull(quotename([Flag], char(34)), '\N')
from SinglePoint.dbo.CountryCodes