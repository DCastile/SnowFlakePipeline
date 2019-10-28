select
	 [MANDT] = quotename([MANDT], char(34)),
	 [SPRAS] = quotename([SPRAS], char(34)),
	 [PSTYV] = quotename([PSTYV], char(34)),
	 [VTEXT] = quotename([VTEXT], char(34))
from SAP_Production.dbo.TVAPT