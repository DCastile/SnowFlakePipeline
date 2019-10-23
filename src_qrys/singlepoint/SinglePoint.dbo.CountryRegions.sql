select
	 [Country_a2] = isNull(quotename([Country_a2], char(34)), '\N'),
	 [Region] = isNull(quotename([Region], char(34)), '\N'),
	 [Description] = isNull(quotename([Description], char(34)), '\N')
from SinglePoint.dbo.CountryRegions