select
	 [MATERIAL] = quotename(MCHB.[MATERIAL], char(34)),
	 [PLANT] = quotename(MCHB.[PLANT], char(34)),
	 [STORAGELOCATION] = quotename(MCHB.[STORAGELOCATION], char(34)),
	 [BATCH] = quotename(MCHB.[BATCH], char(34)),
	 [UNRESTRICTED] = quotename(MCHB.[UNRESTRICTED], char(34)),
	 [ETL_DATA_SOURCE] = quotename(MCHB.[ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename(MCHB.[ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = quotename(MCHB.[ETL_LOAD_DATE], char(34))
from SAP_Production.dbo.MCHB