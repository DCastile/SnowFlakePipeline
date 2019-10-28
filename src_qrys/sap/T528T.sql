select
	 [MANDT] = quotename([MANDT], char(34)),
	 [SPRSL] = quotename([SPRSL], char(34)),
	 [OTYPE] = quotename([OTYPE], char(34)),
	 [PLANS] = quotename([PLANS], char(34)),
	 [ENDDA] = convert(varchar(50), [ENDDA], 21),
	 [BEGDA] = convert(varchar(50), [BEGDA], 21),
	 [PLSTX] = quotename([PLSTX], char(34)),
	 [MAINT] = quotename([MAINT], char(34)),
	 [ETL_DATA_SOURCE] = quotename([ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename([ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = convert(varchar(50), [ETL_LOAD_DATE], 21)
from SAP_Production.dbo.T528T