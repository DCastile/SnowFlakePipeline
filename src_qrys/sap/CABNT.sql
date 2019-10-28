select
	 [MANDT] = quotename([MANDT], char(34)),
	 [ATINN] = quotename([ATINN], char(34)),
	 [SPRAS] = quotename([SPRAS], char(34)),
	 [ADZHL] = quotename([ADZHL], char(34)),
	 [ATBEZ] = quotename([ATBEZ], char(34)),
	 [ATUE1] = quotename([ATUE1], char(34)),
	 [ATUE2] = quotename([ATUE2], char(34)),
	 [DATUV] = quotename([DATUV], char(34)),
	 [TECHV] = quotename([TECHV], char(34)),
	 [AENNR] = quotename([AENNR], char(34)),
	 [LKENZ] = quotename([LKENZ], char(34)),
	 [ETL_DATA_SOURCE] = quotename([ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename([ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = quotename([ETL_LOAD_DATE], char(34))
from SAP_Production.dbo.CABNT