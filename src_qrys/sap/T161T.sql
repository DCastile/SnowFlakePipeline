select
	 [MANDT] = quotename([MANDT], char(34)),
	 [SPRAS] = quotename([SPRAS], char(34)),
	 [BSART] = quotename([BSART], char(34)),
	 [BSTYP] = quotename([BSTYP], char(34)),
	 [BATXT] = quotename([BATXT], char(34))
from SAP_Production.dbo.T161T