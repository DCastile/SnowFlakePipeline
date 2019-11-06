select
	 [MANDT] = quotename([EQKT].[MANDT], char(34)),
	 [EQUNR] = quotename([EQKT].[EQUNR], char(34)),
	 [SPRAS] = quotename([EQKT].[SPRAS], char(34)),
	 [EQKTX] = quotename([EQKT].[EQKTX], char(34)),
	 [KZLTX] = quotename([EQKT].[KZLTX], char(34)),
	 [TXASP] = quotename([EQKT].[TXASP], char(34)),
	 [EQKTU] = quotename([EQKT].[EQKTU], char(34))
from SAP_Production.dbo.EQKT