select
	 [MANDT] = quotename([MANDT], char(34)),
	 [EQUNR] = quotename([EQUNR], char(34)),
	 [SPRAS] = quotename([SPRAS], char(34)),
	 [EQKTX] = quotename([EQKTX], char(34)),
	 [KZLTX] = quotename([KZLTX], char(34)),
	 [TXASP] = quotename([TXASP], char(34)),
	 [EQKTU] = quotename([EQKTU], char(34))
from SAP_Production.dbo.EQKT