select
	 [MANDT] = quotename([MANDT], char(34)),
	 [KAPPL] = quotename([KAPPL], char(34)),
	 [KSCHL] = quotename([KSCHL], char(34)),
	 [MATWA] = quotename([MATWA], char(34)),
	 [DATBI] = convert(varchar(50), [DATBI], 21),
	 [DATAB] = convert(varchar(50), [DATAB], 21),
	 [KNUMH] = quotename([KNUMH], char(34)),
	 [ETL_DATA_SOURCE] = quotename([ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename([ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = convert(varchar(50), [ETL_LOAD_DATE], 21)
from SAP_Production.dbo.KOTD001