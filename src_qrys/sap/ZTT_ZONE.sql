select
	 [PLANT] = quotename([PLANT], char(34)),
	 [STORAGELOCATION] = quotename([STORAGELOCATION], char(34)),
	 [ZONE] = quotename([ZONE], char(34)),
	 [SLOC1] = quotename([SLOC1], char(34)),
	 [SLOC2] = quotename([SLOC2], char(34)),
	 [ETL_DATA_SOURCE] = quotename([ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename([ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = quotename([ETL_LOAD_DATE], char(34))
from SAP_Production.dbo.ZTT_ZONE