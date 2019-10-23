select
	 [MANDT] = isNull(quotename([MANDT], char(34)), '\N'),
	 [SPRAS] = isNull(quotename([SPRAS], char(34)), '\N'),
	 [AUART] = isNull(quotename([AUART], char(34)), '\N'),
	 [BEZEI] = isNull(quotename([BEZEI], char(34)), '\N'),
	 [TXT_BUTTON] = isNull(quotename([TXT_BUTTON], char(34)), '\N')
from SAP_Production.dbo.TVAKT