select
	 [MANDT] = isNull(quotename([MANDT], char(34)), '\N'),
	 [SPRAS] = isNull(quotename([SPRAS], char(34)), '\N'),
	 [PSTYV] = isNull(quotename([PSTYV], char(34)), '\N'),
	 [VTEXT] = isNull(quotename([VTEXT], char(34)), '\N')
from SAP_Production.dbo.TVAPT