select
	 [MANDT] = quotename([MANDT], char(34)),
	 [SPRAS] = quotename([SPRAS], char(34)),
	 [AUART] = quotename([AUART], char(34)),
	 [BEZEI] = quotename([BEZEI], char(34)),
	 [TXT_BUTTON] = quotename([TXT_BUTTON], char(34))
from SAP_Production.dbo.TVAKT