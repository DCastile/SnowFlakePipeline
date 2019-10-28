select
	 [MANDT] = quotename([MANDT], char(34)),
	 [SPRAS] = quotename([SPRAS], char(34)),
	 [ABRVW] = quotename([ABRVW], char(34)),
	 [BEZEI] = quotename([BEZEI], char(34))
from SAP_Production.dbo.TVLVT