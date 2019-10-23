select
	 [MANDT] = isNull(quotename([MANDT], char(34)), '\N'),
	 [KUNNR] = isNull(quotename([KUNNR], char(34)), '\N'),
	 [VKORG] = isNull(quotename([VKORG], char(34)), '\N'),
	 [VTWEG] = isNull(quotename([VTWEG], char(34)), '\N'),
	 [SPART] = isNull(quotename([SPART], char(34)), '\N'),
	 [PARVW] = isNull(quotename([PARVW], char(34)), '\N'),
	 [PARZA] = isNull(quotename([PARZA], char(34)), '\N'),
	 [KUNN2] = isNull(quotename([KUNN2], char(34)), '\N'),
	 [LIFNR] = isNull(quotename([LIFNR], char(34)), '\N'),
	 [PERNR] = isNull(quotename([PERNR], char(34)), '\N'),
	 [PARNR] = isNull(quotename([PARNR], char(34)), '\N'),
	 [KNREF] = isNull(quotename([KNREF], char(34)), '\N'),
	 [DEFPA] = isNull(quotename([DEFPA], char(34)), '\N'),
	 [ETL_DATA_SOURCE] = isNull(quotename([ETL_DATA_SOURCE], char(34)), '\N'),
	 [ETL_PROCESS_ID] = isNull(quotename([ETL_PROCESS_ID], char(34)), '\N'),
	 [ETL_LOAD_DATE] = isNull(convert(varchar(50), [ETL_LOAD_DATE], 21), '\N')
from SAP_Production.dbo.KNVP