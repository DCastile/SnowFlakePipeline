select
	 [MANDT] = quotename([SKAT].[MANDT], char(34)),
	 [SPRAS] = quotename([SKAT].[SPRAS], char(34)),
	 [KTOPL] = quotename([SKAT].[KTOPL], char(34)),
	 [SAKNR] = quotename([SKAT].[SAKNR], char(34)),
	 [TXT20] = quotename([SKAT].[TXT20], char(34)),
	 [TXT50] = quotename([SKAT].[TXT50], char(34)),
	 [MCOD1] = quotename([SKAT].[MCOD1], char(34)),
	 [ETL_DATA_SOURCE] = quotename([SKAT].[ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename([SKAT].[ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = quotename([SKAT].[ETL_LOAD_DATE], char(34))
from SAP_Production.dbo.SKAT