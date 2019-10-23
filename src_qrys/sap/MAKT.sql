select
	 [MANDT] = isNull(quotename([MANDT], char(34)), '\N'),
	 [MATNR] = isNull(quotename([MATNR], char(34)), '\N'),
	 [SPRAS] = isNull(quotename([SPRAS], char(34)), '\N'),
	 [MAKTX] = isNull(quotename([MAKTX], char(34)), '\N'),
	 [MAKTG] = isNull(quotename([MAKTG], char(34)), '\N'),
	 [ETL_DATA_SOURCE] = isNull(quotename([ETL_DATA_SOURCE], char(34)), '\N'),
	 [ETL_PROCESS_ID] = isNull(quotename([ETL_PROCESS_ID], char(34)), '\N'),
	 [ETL_LOAD_DATE] = isNull(convert(varchar(50), [ETL_LOAD_DATE], 21), '\N')
from SAP_Production.dbo.MAKT