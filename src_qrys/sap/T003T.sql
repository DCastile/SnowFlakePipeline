select
	 [MANDT] = quotename([T003T].[MANDT], char(34)),
	 [SPRAS] = quotename([T003T].[SPRAS], char(34)),
	 [BLART] = quotename([T003T].[BLART], char(34)),
	 [LTEXT] = quotename([T003T].[LTEXT], char(34)),
	 [ETL_DATA_SOURCE] = quotename([T003T].[ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename([T003T].[ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = quotename([T003T].[ETL_LOAD_DATE], char(34))
from SAP_Production.dbo.T003T