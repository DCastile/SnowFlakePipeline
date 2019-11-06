select
	 [MATERIAL] = quotename([MSKA].[MATERIAL], char(34)),
	 [PLANT] = quotename([MSKA].[PLANT], char(34)),
	 [STORAGELOCATION] = quotename([MSKA].[STORAGELOCATION], char(34)),
	 [BATCH] = quotename([MSKA].[BATCH], char(34)),
	 [SOBKZ] = quotename([MSKA].[SOBKZ], char(34)),
	 [SO] = quotename([MSKA].[SO], char(34)),
	 [SOITEM] = quotename([MSKA].[SOITEM], char(34)),
	 [UNRESTRICTED] = quotename([MSKA].[UNRESTRICTED], char(34)),
	 [KALAB] = quotename([MSKA].[KALAB], char(34)),
	 [ETL_DATA_SOURCE] = quotename([MSKA].[ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename([MSKA].[ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = quotename([MSKA].[ETL_LOAD_DATE], char(34))
from SAP_Production.dbo.MSKA