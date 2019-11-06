select
	 [MANDT] = quotename([TVLVT].[MANDT], char(34)),
	 [SPRAS] = quotename([TVLVT].[SPRAS], char(34)),
	 [ABRVW] = quotename([TVLVT].[ABRVW], char(34)),
	 [BEZEI] = quotename([TVLVT].[BEZEI], char(34))
from SAP_Production.dbo.TVLVT