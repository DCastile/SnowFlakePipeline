select
	 [MANDT] = quotename([T528T].[MANDT], char(34)),
	 [SPRSL] = quotename([T528T].[SPRSL], char(34)),
	 [OTYPE] = quotename([T528T].[OTYPE], char(34)),
	 [PLANS] = quotename([T528T].[PLANS], char(34)),
	 [ENDDA] = convert(varchar(50), [T528T].[ENDDA], 21),
	 [BEGDA] = convert(varchar(50), [T528T].[BEGDA], 21),
	 [PLSTX] = quotename([T528T].[PLSTX], char(34)),
	 [MAINT] = quotename([T528T].[MAINT], char(34)),
	 [ETL_DATA_SOURCE] = quotename([T528T].[ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename([T528T].[ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = convert(varchar(50), [T528T].[ETL_LOAD_DATE], 21)
from SAP_Production.dbo.T528T