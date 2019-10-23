select
	 [MANDT] = isNull(quotename([MANDT], char(34)), '\N'),
	 [SPRAS] = isNull(quotename([SPRAS], char(34)), '\N'),
	 [KOKRS] = isNull(quotename([KOKRS], char(34)), '\N'),
	 [KOSTL] = isNull(quotename([KOSTL], char(34)), '\N'),
	 [DATBI] = isNull(convert(varchar(50), [DATBI], 21), '\N'),
	 [KTEXT] = isNull(quotename([KTEXT], char(34)), '\N'),
	 [LTEXT] = isNull(quotename([LTEXT], char(34)), '\N'),
	 [MCTXT] = isNull(quotename([MCTXT], char(34)), '\N'),
	 [ETL_DATA_SOURCE] = isNull(quotename([ETL_DATA_SOURCE], char(34)), '\N'),
	 [ETL_PROCESS_ID] = isNull(quotename([ETL_PROCESS_ID], char(34)), '\N'),
	 [ETL_LOAD_DATE] = isNull(convert(varchar(50), [ETL_LOAD_DATE], 21), '\N')
from SAP_Production.dbo.CSKT