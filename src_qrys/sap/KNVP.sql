select
	 [MANDT] = quotename([KNVP].[MANDT], char(34)),
	 [KUNNR] = quotename([KNVP].[KUNNR], char(34)),
	 [VKORG] = quotename([KNVP].[VKORG], char(34)),
	 [VTWEG] = quotename([KNVP].[VTWEG], char(34)),
	 [SPART] = quotename([KNVP].[SPART], char(34)),
	 [PARVW] = quotename([KNVP].[PARVW], char(34)),
	 [PARZA] = quotename([KNVP].[PARZA], char(34)),
	 [KUNN2] = quotename([KNVP].[KUNN2], char(34)),
	 [LIFNR] = quotename([KNVP].[LIFNR], char(34)),
	 [PERNR] = quotename([KNVP].[PERNR], char(34)),
	 [PARNR] = quotename([KNVP].[PARNR], char(34)),
	 [KNREF] = quotename([KNVP].[KNREF], char(34)),
	 [DEFPA] = quotename([KNVP].[DEFPA], char(34)),
	 [ETL_DATA_SOURCE] = quotename([KNVP].[ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename([KNVP].[ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = convert(varchar(50), [KNVP].[ETL_LOAD_DATE], 21)
from SAP_Production.dbo.KNVP