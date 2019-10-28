select
	 [EQUIPMENT] = quotename([EQUIPMENT], char(34)),
	 [InventoryDocument] = quotename([InventoryDocument], char(34)),
	 [EQLFN] = quotename([EQLFN], char(34)),
	 [VALIDTO] = quotename([VALIDTO], char(34)),
	 [VALIDFROM] = quotename([VALIDFROM], char(34)),
	 [ETL_DATA_SOURCE] = quotename([ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename([ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = quotename([ETL_LOAD_DATE], char(34))
from SAP_Production.dbo.EQUZ