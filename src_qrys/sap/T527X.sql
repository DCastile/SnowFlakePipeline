select
	 [MANDT] = quotename(T527X.[MANDT], char(34)),
	 [SPRSL] = quotename(T527X.[SPRSL], char(34)),
	 [ORGEH] = quotename(T527X.[ORGEH], char(34)),
	 [ENDDA] = convert(varchar(50), T527X.[ENDDA], 21),
	 [BEGDA] = convert(varchar(50), T527X.[BEGDA], 21),
	 [ORGTX] = quotename(T527X.[ORGTX], char(34)),
	 [MAINT] = quotename(T527X.[MAINT], char(34)),
	 [ETL_DATA_SOURCE] = quotename(T527X.[ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename(T527X.[ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = convert(varchar(50), T527X.[ETL_LOAD_DATE], 21)
from SAP_Production.dbo.T527X