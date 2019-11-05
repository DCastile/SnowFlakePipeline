select
	 [MANDT] = quotename(KONDD.[MANDT], char(34)),
	 [KNUMH] = quotename(KONDD.[KNUMH], char(34)),
	 [SMATN] = quotename(KONDD.[SMATN], char(34)),
	 [MEINS] = quotename(KONDD.[MEINS], char(34)),
	 [SUGRD] = quotename(KONDD.[SUGRD], char(34)),
	 [PSDSP] = quotename(KONDD.[PSDSP], char(34)),
	 [LSTACS] = quotename(KONDD.[LSTACS], char(34)),
	 [ETL_DATA_SOURCE] = quotename(KONDD.[ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename(KONDD.[ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = convert(varchar(50), KONDD.[ETL_LOAD_DATE], 21)
from SAP_Production.dbo.KONDD