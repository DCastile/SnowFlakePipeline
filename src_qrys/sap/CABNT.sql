select
	 [MANDT] = quotename(CABNT.[MANDT], char(34)),
	 [ATINN] = quotename(CABNT.[ATINN], char(34)),
	 [SPRAS] = quotename(CABNT.[SPRAS], char(34)),
	 [ADZHL] = quotename(CABNT.[ADZHL], char(34)),
	 [ATBEZ] = quotename(CABNT.[ATBEZ], char(34)),
	 [ATUE1] = quotename(CABNT.[ATUE1], char(34)),
	 [ATUE2] = quotename(CABNT.[ATUE2], char(34)),
	 [DATUV] = quotename(CABNT.[DATUV], char(34)),
	 [TECHV] = quotename(CABNT.[TECHV], char(34)),
	 [AENNR] = quotename(CABNT.[AENNR], char(34)),
	 [LKENZ] = quotename(CABNT.[LKENZ], char(34)),
	 [ETL_DATA_SOURCE] = quotename(CABNT.[ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename(CABNT.[ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = quotename(CABNT.[ETL_LOAD_DATE], char(34))
from SAP_Production.dbo.CABNT