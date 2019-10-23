select
	 [MANDT] = isNull(quotename([MANDT], char(34)), '\N'),
	 [SPRAS] = isNull(quotename([SPRAS], char(34)), '\N'),
	 [BSART] = isNull(quotename([BSART], char(34)), '\N'),
	 [BSTYP] = isNull(quotename([BSTYP], char(34)), '\N'),
	 [BATXT] = isNull(quotename([BATXT], char(34)), '\N')
from SAP_Production.dbo.T161T