select
	 [MANDT] = quotename([COEP_LC].[MANDT], char(34)),
	 [KOKRS] = quotename([COEP_LC].[KOKRS], char(34)),
	 [BELNR] = quotename([COEP_LC].[BELNR], char(34)),
	 [BUZEI] = quotename([COEP_LC].[BUZEI], char(34)),
	 [PERIO] = quotename([COEP_LC].[PERIO], char(34)),
	 [WTGBTR] = quotename([COEP_LC].[WTGBTR], char(34)),
	 [MEGBTR] = quotename([COEP_LC].[MEGBTR], char(34)),
	 [OBJNR] = quotename([COEP_LC].[OBJNR], char(34)),
	 [GJAHR] = quotename([COEP_LC].[GJAHR], char(34)),
	 [KSTAR] = quotename([COEP_LC].[KSTAR], char(34)),
	 [MEINH] = quotename([COEP_LC].[MEINH], char(34)),
	 [PERNR] = quotename([COEP_LC].[PERNR], char(34)),
	 [BUKRS] = quotename([COEP_LC].[BUKRS], char(34)),
	 [BEKNZ] = quotename([COEP_LC].[BEKNZ], char(34)),
	 [VRGNG] = quotename([COEP_LC].[VRGNG], char(34))
from SAP_Production.dbo.COEP_LC