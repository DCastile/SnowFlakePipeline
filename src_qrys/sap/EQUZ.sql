select
	 [EQUIPMENT] = quotename(EQUZ.[EQUIPMENT], char(34)),
	 [InventoryDocument] = quotename(EQUZ.[InventoryDocument], char(34)),
	 [EQLFN] = quotename(EQUZ.[EQLFN], char(34)),
	 [VALIDTO] = quotename(EQUZ.[VALIDTO], char(34)),
	 [VALIDFROM] = quotename(EQUZ.[VALIDFROM], char(34)),
	 [ETL_DATA_SOURCE] = quotename(EQUZ.[ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename(EQUZ.[ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = quotename(EQUZ.[ETL_LOAD_DATE], char(34))
from SAP_Production.dbo.EQUZ