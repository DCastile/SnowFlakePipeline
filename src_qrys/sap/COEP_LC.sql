select
	 [MANDT] = quotename([MANDT], char(34)),
	 [KOKRS] = quotename([KOKRS], char(34)),
	 [BELNR] = quotename([BELNR], char(34)),
	 [BUZEI] = quotename([BUZEI], char(34)),
	 [PERIO] = quotename([PERIO], char(34)),
	 [WTGBTR] = quotename([WTGBTR], char(34)),
	 [MEGBTR] = quotename([MEGBTR], char(34)),
	 [OBJNR] = quotename([OBJNR], char(34)),
	 [GJAHR] = quotename([GJAHR], char(34)),
	 [KSTAR] = quotename([KSTAR], char(34)),
	 [MEINH] = quotename([MEINH], char(34)),
	 [PERNR] = quotename([PERNR], char(34)),
	 [BUKRS] = quotename([BUKRS], char(34)),
	 [BEKNZ] = quotename([BEKNZ], char(34)),
	 [VRGNG] = quotename([VRGNG], char(34))
from SAP_Production.dbo.COEP_LC