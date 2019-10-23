select
	 [MANDT] = isNull(quotename([MANDT], char(34)), '\N'),
	 [EQUNR] = isNull(quotename([EQUNR], char(34)), '\N'),
	 [SPRAS] = isNull(quotename([SPRAS], char(34)), '\N'),
	 [EQKTX] = isNull(quotename([EQKTX], char(34)), '\N'),
	 [KZLTX] = isNull(quotename([KZLTX], char(34)), '\N'),
	 [TXASP] = isNull(quotename([TXASP], char(34)), '\N'),
	 [EQKTU] = isNull(quotename([EQKTU], char(34)), '\N')
from SAP_Production.dbo.EQKT