select
	 [MANDT] = isNull(quotename([MANDT], char(34)), '\N'),
	 [ATINN] = isNull(quotename([ATINN], char(34)), '\N'),
	 [SPRAS] = isNull(quotename([SPRAS], char(34)), '\N'),
	 [ADZHL] = isNull(quotename([ADZHL], char(34)), '\N'),
	 [ATBEZ] = isNull(quotename([ATBEZ], char(34)), '\N'),
	 [ATUE1] = isNull(quotename([ATUE1], char(34)), '\N'),
	 [ATUE2] = isNull(quotename([ATUE2], char(34)), '\N'),
	 [DATUV] = isNull(quotename([DATUV], char(34)), '\N'),
	 [TECHV] = isNull(quotename([TECHV], char(34)), '\N'),
	 [AENNR] = isNull(quotename([AENNR], char(34)), '\N'),
	 [LKENZ] = isNull(quotename([LKENZ], char(34)), '\N'),
	 [ETL_DATA_SOURCE] = isNull(quotename([ETL_DATA_SOURCE], char(34)), '\N'),
	 [ETL_PROCESS_ID] = isNull(quotename([ETL_PROCESS_ID], char(34)), '\N'),
	 [ETL_LOAD_DATE] = isNull(quotename([ETL_LOAD_DATE], char(34)), '\N')
from SAP_Production.dbo.CABNT