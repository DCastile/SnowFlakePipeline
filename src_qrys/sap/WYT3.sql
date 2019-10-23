select
	 [MANDT] = isNull(quotename([MANDT], char(34)), '\N'),
	 [LIFNR] = isNull(quotename([LIFNR], char(34)), '\N'),
	 [EKORG] = isNull(quotename([EKORG], char(34)), '\N'),
	 [LTSNR] = isNull(quotename([LTSNR], char(34)), '\N'),
	 [WERKS] = isNull(quotename([WERKS], char(34)), '\N'),
	 [PARVW] = isNull(quotename([PARVW], char(34)), '\N'),
	 [PARZA] = isNull(quotename([PARZA], char(34)), '\N'),
	 [ERNAM] = isNull(quotename([ERNAM], char(34)), '\N'),
	 [ERDAT] = isNull(convert(varchar(50), [ERDAT], 21), '\N'),
	 [LIFN2] = isNull(quotename([LIFN2], char(34)), '\N'),
	 [DEFPA] = isNull(quotename([DEFPA], char(34)), '\N'),
	 [PERNR] = isNull(quotename([PERNR], char(34)), '\N'),
	 [PARNR] = isNull(quotename([PARNR], char(34)), '\N'),
	 [ETL_DATA_SOURCE] = isNull(quotename([ETL_DATA_SOURCE], char(34)), '\N'),
	 [ETL_PROCESS_ID] = isNull(quotename([ETL_PROCESS_ID], char(34)), '\N'),
	 [ETL_LOAD_DATE] = isNull(convert(varchar(50), [ETL_LOAD_DATE], 21), '\N')
from SAP_Production.dbo.WYT3