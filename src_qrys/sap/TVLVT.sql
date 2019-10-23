select
	 [MANDT] = isNull(quotename([MANDT], char(34)), '\N'),
	 [SPRAS] = isNull(quotename([SPRAS], char(34)), '\N'),
	 [ABRVW] = isNull(quotename([ABRVW], char(34)), '\N'),
	 [BEZEI] = isNull(quotename([BEZEI], char(34)), '\N')
from SAP_Production.dbo.TVLVT