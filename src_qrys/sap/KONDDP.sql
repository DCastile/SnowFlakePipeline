select
	 [MANDT] = quotename([KONDDP].[MANDT], char(34)),
	 [KNUMH] = quotename([KONDDP].[KNUMH], char(34)),
	 [KPOSN] = quotename([KONDDP].[KPOSN], char(34)),
	 [SMATN] = quotename([KONDDP].[SMATN], char(34)),
	 [MEINS] = quotename([KONDDP].[MEINS], char(34)),
	 [PSDSP] = quotename([KONDDP].[PSDSP], char(34)),
	 [LSTACS] = quotename([KONDDP].[LSTACS], char(34)),
	 [ETL_DATA_SOURCE] = quotename([KONDDP].[ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename([KONDDP].[ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = convert(varchar(50), [KONDDP].[ETL_LOAD_DATE], 21)
from SAP_Production.dbo.KONDDP