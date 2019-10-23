select
	 [MATERIAL] = isNull(quotename([MATERIAL], char(34)), '\N'),
	 [PLANT] = isNull(quotename([PLANT], char(34)), '\N'),
	 [STORAGELOCATION] = isNull(quotename([STORAGELOCATION], char(34)), '\N'),
	 [BATCH] = isNull(quotename([BATCH], char(34)), '\N'),
	 [SOBKZ] = isNull(quotename([SOBKZ], char(34)), '\N'),
	 [SO] = isNull(quotename([SO], char(34)), '\N'),
	 [SOITEM] = isNull(quotename([SOITEM], char(34)), '\N'),
	 [UNRESTRICTED] = isNull(quotename([UNRESTRICTED], char(34)), '\N'),
	 [KALAB] = isNull(quotename([KALAB], char(34)), '\N'),
	 [ETL_DATA_SOURCE] = isNull(quotename([ETL_DATA_SOURCE], char(34)), '\N'),
	 [ETL_PROCESS_ID] = isNull(quotename([ETL_PROCESS_ID], char(34)), '\N'),
	 [ETL_LOAD_DATE] = isNull(quotename([ETL_LOAD_DATE], char(34)), '\N')
from SAP_Production.dbo.MSKA