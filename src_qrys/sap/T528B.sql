select
	 [MANDT] = quotename([MANDT], char(34)),
	 [OTYPE] = quotename([OTYPE], char(34)),
	 [PLANS] = quotename([PLANS], char(34)),
	 [ENDDA] = convert(varchar(50), [ENDDA], 21),
	 [BEGDA] = convert(varchar(50), [BEGDA], 21),
	 [MOLGA] = quotename([MOLGA], char(34)),
	 [TRFAR] = quotename([TRFAR], char(34)),
	 [TRFGB] = quotename([TRFGB], char(34)),
	 [TRFKZ] = quotename([TRFKZ], char(34)),
	 [TRFGR] = quotename([TRFGR], char(34)),
	 [TRFST] = quotename([TRFST], char(34)),
	 [ARBWS] = quotename([ARBWS], char(34)),
	 [AWTGR] = quotename([AWTGR], char(34)),
	 [GESCH] = quotename([GESCH], char(34)),
	 [STELL] = quotename([STELL], char(34)),
	 [SCHWA] = quotename([SCHWA], char(34)),
	 [MAINT] = quotename([MAINT], char(34)),
	 [ORGEH] = quotename([ORGEH], char(34)),
	 [ETL_DATA_SOURCE] = quotename([ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename([ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = quotename([ETL_LOAD_DATE], char(34))
from SAP_Production.dbo.T528B