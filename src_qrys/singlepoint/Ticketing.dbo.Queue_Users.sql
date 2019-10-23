select
	 [SroKey] = isNull(quotename([SroKey], char(34)), '\N'),
	 [Expense] = isNull(quotename([Expense], char(34)), '\N'),
	 [Labor] = isNull(quotename([Labor], char(34)), '\N'),
	 [Material] = isNull(quotename([Material], char(34)), '\N'),
	 [Total] = isNull(quotename([Total], char(34)), '\N')
from SinglePoint.dbo.tmpSroWork