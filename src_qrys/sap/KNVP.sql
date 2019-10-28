select
	 [MANDT] = quotename([MANDT], char(34)),
	 [KUNNR] = quotename([KUNNR], char(34)),
	 [VKORG] = quotename([VKORG], char(34)),
	 [VTWEG] = quotename([VTWEG], char(34)),
	 [SPART] = quotename([SPART], char(34)),
	 [PARVW] = quotename([PARVW], char(34)),
	 [PARZA] = quotename([PARZA], char(34)),
	 [KUNN2] = quotename([KUNN2], char(34)),
	 [LIFNR] = quotename([LIFNR], char(34)),
	 [PERNR] = quotename([PERNR], char(34)),
	 [PARNR] = quotename([PARNR], char(34)),
	 [KNREF] = quotename([KNREF], char(34)),
	 [DEFPA] = quotename([DEFPA], char(34)),
	 [ETL_DATA_SOURCE] = quotename([ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename([ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = convert(varchar(50), [ETL_LOAD_DATE], 21)
from SAP_Production.dbo.KNVP