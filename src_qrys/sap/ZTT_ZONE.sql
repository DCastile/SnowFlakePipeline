select
	 [PLANT] = isNull(quotename([PLANT], char(34)), '\N'),
	 [STORAGELOCATION] = isNull(quotename([STORAGELOCATION], char(34)), '\N'),
	 [ZONE] = isNull(quotename([ZONE], char(34)), '\N'),
	 [SLOC1] = isNull(quotename([SLOC1], char(34)), '\N'),
	 [SLOC2] = isNull(quotename([SLOC2], char(34)), '\N'),
	 [ETL_DATA_SOURCE] = isNull(quotename([ETL_DATA_SOURCE], char(34)), '\N'),
	 [ETL_PROCESS_ID] = isNull(quotename([ETL_PROCESS_ID], char(34)), '\N'),
	 [ETL_LOAD_DATE] = isNull(quotename([ETL_LOAD_DATE], char(34)), '\N')
from SAP_Production.dbo.ZTT_ZONE