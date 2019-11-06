select
	 [MANDT] = quotename([TVAPT].[MANDT], char(34)),
	 [SPRAS] = quotename([TVAPT].[SPRAS], char(34)),
	 [PSTYV] = quotename([TVAPT].[PSTYV], char(34)),
	 [VTEXT] = quotename([TVAPT].[VTEXT], char(34))
from SAP_Production.dbo.TVAPT