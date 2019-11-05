select
	 [MANDT] = quotename(T179T.[MANDT], char(34)),
	 [SPRAS] = quotename(T179T.[SPRAS], char(34)),
	 [PRODH] = quotename(T179T.[PRODH], char(34)),
	 [VTEXT] = quotename(T179T.[VTEXT], char(34)),
	 [ETL_DATA_SOURCE] = quotename(T179T.[ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename(T179T.[ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = convert(varchar(50), T179T.[ETL_LOAD_DATE], 21)
from SAP_Production.dbo.T179T