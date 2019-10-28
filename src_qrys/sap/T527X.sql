select
	 [MANDT] = quotename([MANDT], char(34)),
	 [SPRSL] = quotename([SPRSL], char(34)),
	 [ORGEH] = quotename([ORGEH], char(34)),
	 [ENDDA] = convert(varchar(50), [ENDDA], 21),
	 [BEGDA] = convert(varchar(50), [BEGDA], 21),
	 [ORGTX] = quotename([ORGTX], char(34)),
	 [MAINT] = quotename([MAINT], char(34)),
	 [ETL_DATA_SOURCE] = quotename([ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename([ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = convert(varchar(50), [ETL_LOAD_DATE], 21)
from SAP_Production.dbo.T527X