select
	 [EQUIPMENT] = isNull(quotename([EQUIPMENT], char(34)), '\N'),
	 [STOCKTYPE] = isNull(quotename([STOCKTYPE], char(34)), '\N'),
	 [PLANT] = isNull(quotename([PLANT], char(34)), '\N'),
	 [STORAGELOCATION] = isNull(quotename([STORAGELOCATION], char(34)), '\N'),
	 [SALESORDER] = isNull(quotename([SALESORDER], char(34)), '\N'),
	 [SOITEM] = isNull(quotename([SOITEM], char(34)), '\N'),
	 [SPECIALSTOCK] = isNull(quotename([SPECIALSTOCK], char(34)), '\N'),
	 [KDAUF] = isNull(quotename([KDAUF], char(34)), '\N'),
	 [SOBKZ] = isNull(quotename([SOBKZ], char(34)), '\N'),
	 [LBBSA] = isNull(quotename([LBBSA], char(34)), '\N'),
	 [ETL_DATA_SOURCE] = isNull(quotename([ETL_DATA_SOURCE], char(34)), '\N'),
	 [ETL_PROCESS_ID] = isNull(quotename([ETL_PROCESS_ID], char(34)), '\N'),
	 [ETL_LOAD_DATE] = isNull(quotename([ETL_LOAD_DATE], char(34)), '\N')
from SAP_Production.dbo.EQBS