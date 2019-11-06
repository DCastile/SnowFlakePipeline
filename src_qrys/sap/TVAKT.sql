select
	 [MANDT] = quotename([TVAKT].[MANDT], char(34)),
	 [SPRAS] = quotename([TVAKT].[SPRAS], char(34)),
	 [AUART] = quotename([TVAKT].[AUART], char(34)),
	 [BEZEI] = quotename([TVAKT].[BEZEI], char(34)),
	 [TXT_BUTTON] = quotename([TVAKT].[TXT_BUTTON], char(34))
from SAP_Production.dbo.TVAKT