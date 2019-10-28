select
	 [MANDT] = quotename([MANDT], char(34)),
	 [SPRAS] = quotename([SPRAS], char(34)),
	 [BLART] = quotename([BLART], char(34)),
	 [LTEXT] = quotename([LTEXT], char(34)),
	 [ETL_DATA_SOURCE] = quotename([ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename([ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = quotename([ETL_LOAD_DATE], char(34))
from SAP_Production.dbo.T003T