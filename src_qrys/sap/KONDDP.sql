select
	 [MANDT] = isNull(quotename([MANDT], char(34)), '\N'),
	 [KNUMH] = isNull(quotename([KNUMH], char(34)), '\N'),
	 [KPOSN] = isNull(quotename([KPOSN], char(34)), '\N'),
	 [SMATN] = isNull(quotename([SMATN], char(34)), '\N'),
	 [MEINS] = isNull(quotename([MEINS], char(34)), '\N'),
	 [PSDSP] = isNull(quotename([PSDSP], char(34)), '\N'),
	 [LSTACS] = isNull(quotename([LSTACS], char(34)), '\N'),
	 [ETL_DATA_SOURCE] = isNull(quotename([ETL_DATA_SOURCE], char(34)), '\N'),
	 [ETL_PROCESS_ID] = isNull(quotename([ETL_PROCESS_ID], char(34)), '\N'),
	 [ETL_LOAD_DATE] = isNull(convert(varchar(50), [ETL_LOAD_DATE], 21), '\N')
from SAP_Production.dbo.KONDDP