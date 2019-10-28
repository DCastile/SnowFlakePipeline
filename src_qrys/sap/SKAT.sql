select
	 [MANDT] = quotename([MANDT], char(34)),
	 [SPRAS] = quotename([SPRAS], char(34)),
	 [KTOPL] = quotename([KTOPL], char(34)),
	 [SAKNR] = quotename([SAKNR], char(34)),
	 [TXT20] = quotename([TXT20], char(34)),
	 [TXT50] = quotename([TXT50], char(34)),
	 [MCOD1] = quotename([MCOD1], char(34)),
	 [ETL_DATA_SOURCE] = quotename([ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename([ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = quotename([ETL_LOAD_DATE], char(34))
from SAP_Production.dbo.SKAT