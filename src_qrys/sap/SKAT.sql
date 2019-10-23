select
	 [MANDT] = isNull(quotename([MANDT], char(34)), '\N'),
	 [SPRAS] = isNull(quotename([SPRAS], char(34)), '\N'),
	 [KTOPL] = isNull(quotename([KTOPL], char(34)), '\N'),
	 [SAKNR] = isNull(quotename([SAKNR], char(34)), '\N'),
	 [TXT20] = isNull(quotename([TXT20], char(34)), '\N'),
	 [TXT50] = isNull(quotename([TXT50], char(34)), '\N'),
	 [MCOD1] = isNull(quotename([MCOD1], char(34)), '\N'),
	 [ETL_DATA_SOURCE] = isNull(quotename([ETL_DATA_SOURCE], char(34)), '\N'),
	 [ETL_PROCESS_ID] = isNull(quotename([ETL_PROCESS_ID], char(34)), '\N'),
	 [ETL_LOAD_DATE] = isNull(quotename([ETL_LOAD_DATE], char(34)), '\N')
from SAP_Production.dbo.SKAT