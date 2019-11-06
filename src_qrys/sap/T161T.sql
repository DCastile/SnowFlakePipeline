select
	 [MANDT] = quotename([T161T].[MANDT], char(34)),
	 [SPRAS] = quotename([T161T].[SPRAS], char(34)),
	 [BSART] = quotename([T161T].[BSART], char(34)),
	 [BSTYP] = quotename([T161T].[BSTYP], char(34)),
	 [BATXT] = quotename([T161T].[BATXT], char(34))
from SAP_Production.dbo.T161T