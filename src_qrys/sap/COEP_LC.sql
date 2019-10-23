select
	 [MANDT] = isNull(quotename([MANDT], char(34)), '\N'),
	 [KOKRS] = isNull(quotename([KOKRS], char(34)), '\N'),
	 [BELNR] = isNull(quotename([BELNR], char(34)), '\N'),
	 [BUZEI] = isNull(quotename([BUZEI], char(34)), '\N'),
	 [PERIO] = isNull(quotename([PERIO], char(34)), '\N'),
	 [WTGBTR] = isNull(quotename([WTGBTR], char(34)), '\N'),
	 [MEGBTR] = isNull(quotename([MEGBTR], char(34)), '\N'),
	 [OBJNR] = isNull(quotename([OBJNR], char(34)), '\N'),
	 [GJAHR] = isNull(quotename([GJAHR], char(34)), '\N'),
	 [KSTAR] = isNull(quotename([KSTAR], char(34)), '\N'),
	 [MEINH] = isNull(quotename([MEINH], char(34)), '\N'),
	 [PERNR] = isNull(quotename([PERNR], char(34)), '\N'),
	 [BUKRS] = isNull(quotename([BUKRS], char(34)), '\N'),
	 [BEKNZ] = isNull(quotename([BEKNZ], char(34)), '\N'),
	 [VRGNG] = isNull(quotename([VRGNG], char(34)), '\N')
from SAP_Production.dbo.COEP_LC