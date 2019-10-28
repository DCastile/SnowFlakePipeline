select
	 [MANDT] = quotename([MANDT], char(34)),
	 [SPRAS] = quotename([SPRAS], char(34)),
	 [KOKRS] = quotename([KOKRS], char(34)),
	 [KOSTL] = quotename([KOSTL], char(34)),
	 [DATBI] = convert(varchar(50), [DATBI], 21),
	 [KTEXT] = quotename([KTEXT], char(34)),
	 [LTEXT] = quotename([LTEXT], char(34)),
	 [MCTXT] = quotename([MCTXT], char(34)),
	 [ETL_DATA_SOURCE] = quotename([ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename([ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = convert(varchar(50), [ETL_LOAD_DATE], 21)
from SAP_Production.dbo.CSKT