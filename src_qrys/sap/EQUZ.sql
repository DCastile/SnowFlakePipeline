select
	 [EQUIPMENT] = isNull(quotename([EQUIPMENT], char(34)), '\N'),
	 [InventoryDocument] = isNull(quotename([InventoryDocument], char(34)), '\N'),
	 [EQLFN] = isNull(quotename([EQLFN], char(34)), '\N'),
	 [VALIDTO] = isNull(quotename([VALIDTO], char(34)), '\N'),
	 [VALIDFROM] = isNull(quotename([VALIDFROM], char(34)), '\N'),
	 [ETL_DATA_SOURCE] = isNull(quotename([ETL_DATA_SOURCE], char(34)), '\N'),
	 [ETL_PROCESS_ID] = isNull(quotename([ETL_PROCESS_ID], char(34)), '\N'),
	 [ETL_LOAD_DATE] = isNull(quotename([ETL_LOAD_DATE], char(34)), '\N')
from SAP_Production.dbo.EQUZ