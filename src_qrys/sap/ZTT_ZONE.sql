select
	 [PLANT] = quotename(ZTT_ZONE.[PLANT], char(34)),
	 [STORAGELOCATION] = quotename(ZTT_ZONE.[STORAGELOCATION], char(34)),
	 [ZONE] = quotename(ZTT_ZONE.[ZONE], char(34)),
	 [SLOC1] = quotename(ZTT_ZONE.[SLOC1], char(34)),
	 [SLOC2] = quotename(ZTT_ZONE.[SLOC2], char(34)),
	 [ETL_DATA_SOURCE] = quotename(ZTT_ZONE.[ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename(ZTT_ZONE.[ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = quotename(ZTT_ZONE.[ETL_LOAD_DATE], char(34))
from SAP_Production.dbo.ZTT_ZONE