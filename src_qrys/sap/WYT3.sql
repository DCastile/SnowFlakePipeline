select
	 [MANDT] = quotename([MANDT], char(34)),
	 [LIFNR] = quotename([LIFNR], char(34)),
	 [EKORG] = quotename([EKORG], char(34)),
	 [LTSNR] = quotename([LTSNR], char(34)),
	 [WERKS] = quotename([WERKS], char(34)),
	 [PARVW] = quotename([PARVW], char(34)),
	 [PARZA] = quotename([PARZA], char(34)),
	 [ERNAM] = quotename([ERNAM], char(34)),
	 [ERDAT] = convert(varchar(50), [ERDAT], 21),
	 [LIFN2] = quotename([LIFN2], char(34)),
	 [DEFPA] = quotename([DEFPA], char(34)),
	 [PERNR] = quotename([PERNR], char(34)),
	 [PARNR] = quotename([PARNR], char(34)),
	 [ETL_DATA_SOURCE] = quotename([ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename([ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = convert(varchar(50), [ETL_LOAD_DATE], 21)
from SAP_Production.dbo.WYT3