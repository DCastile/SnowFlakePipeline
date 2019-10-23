select
	 [MANDT] = isNull(quotename([MANDT], char(34)), '\N'),
	 [KAPPL] = isNull(quotename([KAPPL], char(34)), '\N'),
	 [KSCHL] = isNull(quotename([KSCHL], char(34)), '\N'),
	 [MATWA] = isNull(quotename([MATWA], char(34)), '\N'),
	 [DATBI] = isNull(convert(varchar(50), [DATBI], 21), '\N'),
	 [DATAB] = isNull(convert(varchar(50), [DATAB], 21), '\N'),
	 [KNUMH] = isNull(quotename([KNUMH], char(34)), '\N'),
	 [ETL_DATA_SOURCE] = isNull(quotename([ETL_DATA_SOURCE], char(34)), '\N'),
	 [ETL_PROCESS_ID] = isNull(quotename([ETL_PROCESS_ID], char(34)), '\N'),
	 [ETL_LOAD_DATE] = isNull(convert(varchar(50), [ETL_LOAD_DATE], 21), '\N')
from SAP_Production.dbo.KOTD001