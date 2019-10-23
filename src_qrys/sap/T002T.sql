select
	 [SPRAS] = isNull(quotename([SPRAS], char(34)), '\N'),
	 [SPRSL] = isNull(quotename([SPRSL], char(34)), '\N'),
	 [SPTXT] = isNull(quotename([SPTXT], char(34)), '\N'),
	 [ETL_DATA_SOURCE] = isNull(quotename([ETL_DATA_SOURCE], char(34)), '\N'),
	 [ETL_PROCESS_ID] = isNull(quotename([ETL_PROCESS_ID], char(34)), '\N'),
	 [ETL_LOAD_DATE] = isNull(convert(varchar(50), [ETL_LOAD_DATE], 21), '\N')
from SAP_Production.dbo.T002T