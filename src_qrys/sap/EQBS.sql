select
	 [EQUIPMENT] = quotename([EQBS].[EQUIPMENT], char(34)),
	 [STOCKTYPE] = quotename([EQBS].[STOCKTYPE], char(34)),
	 [PLANT] = quotename([EQBS].[PLANT], char(34)),
	 [STORAGELOCATION] = quotename([EQBS].[STORAGELOCATION], char(34)),
	 [SALESORDER] = quotename([EQBS].[SALESORDER], char(34)),
	 [SOITEM] = quotename([EQBS].[SOITEM], char(34)),
	 [SPECIALSTOCK] = quotename([EQBS].[SPECIALSTOCK], char(34)),
	 [KDAUF] = quotename([EQBS].[KDAUF], char(34)),
	 [SOBKZ] = quotename([EQBS].[SOBKZ], char(34)),
	 [LBBSA] = quotename([EQBS].[LBBSA], char(34)),
	 [ETL_DATA_SOURCE] = quotename([EQBS].[ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename([EQBS].[ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = quotename([EQBS].[ETL_LOAD_DATE], char(34))
from SAP_Production.dbo.EQBS