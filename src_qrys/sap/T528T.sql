select
	 [MANDT] = isNull(quotename([MANDT], char(34)), '\N'),
	 [SPRSL] = isNull(quotename([SPRSL], char(34)), '\N'),
	 [OTYPE] = isNull(quotename([OTYPE], char(34)), '\N'),
	 [PLANS] = isNull(quotename([PLANS], char(34)), '\N'),
	 [ENDDA] = isNull(convert(varchar(50), [ENDDA], 21), '\N'),
	 [BEGDA] = isNull(convert(varchar(50), [BEGDA], 21), '\N'),
	 [PLSTX] = isNull(quotename([PLSTX], char(34)), '\N'),
	 [MAINT] = isNull(quotename([MAINT], char(34)), '\N'),
	 [ETL_DATA_SOURCE] = isNull(quotename([ETL_DATA_SOURCE], char(34)), '\N'),
	 [ETL_PROCESS_ID] = isNull(quotename([ETL_PROCESS_ID], char(34)), '\N'),
	 [ETL_LOAD_DATE] = isNull(convert(varchar(50), [ETL_LOAD_DATE], 21), '\N')
from SAP_Production.dbo.T528T