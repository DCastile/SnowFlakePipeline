select
	 [MANDT] = quotename([MANDT], char(34)),
	 [KNUMH] = quotename([KNUMH], char(34)),
	 [SMATN] = quotename([SMATN], char(34)),
	 [MEINS] = quotename([MEINS], char(34)),
	 [SUGRD] = quotename([SUGRD], char(34)),
	 [PSDSP] = quotename([PSDSP], char(34)),
	 [LSTACS] = quotename([LSTACS], char(34)),
	 [ETL_DATA_SOURCE] = quotename([ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename([ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = convert(varchar(50), [ETL_LOAD_DATE], 21)
from SAP_Production.dbo.KONDD