select
	 [BUKRS] = isNull(quotename([BUKRS], char(34)), '\N'),
	 [BELNR] = isNull(quotename([BELNR], char(34)), '\N'),
	 [BUZEI] = isNull(quotename([BUZEI], char(34)), '\N'),
	 [GJAHR] = isNull(quotename([GJAHR], char(34)), '\N'),
	 [HKONT] = isNull(quotename([HKONT], char(34)), '\N'),
	 [ZUONR] = isNull(quotename([ZUONR], char(34)), '\N'),
	 [BUDAT] = isNull(quotename([BUDAT], char(34)), '\N'),
	 [BLDAT] = isNull(quotename([BLDAT], char(34)), '\N'),
	 [WAERS] = isNull(quotename([WAERS], char(34)), '\N'),
	 [XBLNR] = isNull(quotename([XBLNR], char(34)), '\N'),
	 [BLART] = isNull(quotename([BLART], char(34)), '\N'),
	 [BSCHL] = isNull(quotename([BSCHL], char(34)), '\N'),
	 [SHKZG] = isNull(quotename([SHKZG], char(34)), '\N'),
	 [SGTXT] = isNull(quotename([SGTXT], char(34)), '\N'),
	 [AUFNR] = isNull(quotename([AUFNR], char(34)), '\N'),
	 [WERKS] = isNull(quotename([WERKS], char(34)), '\N'),
	 [KOSTL] = isNull(quotename([KOSTL], char(34)), '\N'),
	 [PSWSL] = isNull(quotename([PSWSL], char(34)), '\N'),
	 [PRCTR] = isNull(quotename([PRCTR], char(34)), '\N'),
	 [XSTOV] = isNull(quotename([XSTOV], char(34)), '\N')
from SAP_Production.dbo.BSIS_BSAS_LC