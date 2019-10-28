select
	 [EQUIPMENT] = quotename([EQUIPMENT], char(34)),
	 [STOCKTYPE] = quotename([STOCKTYPE], char(34)),
	 [PLANT] = quotename([PLANT], char(34)),
	 [STORAGELOCATION] = quotename([STORAGELOCATION], char(34)),
	 [SALESORDER] = quotename([SALESORDER], char(34)),
	 [SOITEM] = quotename([SOITEM], char(34)),
	 [SPECIALSTOCK] = quotename([SPECIALSTOCK], char(34)),
	 [KDAUF] = quotename([KDAUF], char(34)),
	 [SOBKZ] = quotename([SOBKZ], char(34)),
	 [LBBSA] = quotename([LBBSA], char(34)),
	 [ETL_DATA_SOURCE] = quotename([ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename([ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = quotename([ETL_LOAD_DATE], char(34))
from SAP_Production.dbo.EQBS