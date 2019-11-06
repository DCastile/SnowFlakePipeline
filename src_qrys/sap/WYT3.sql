select
	 [MANDT] = quotename([WYT3].[MANDT], char(34)),
	 [LIFNR] = quotename([WYT3].[LIFNR], char(34)),
	 [EKORG] = quotename([WYT3].[EKORG], char(34)),
	 [LTSNR] = quotename([WYT3].[LTSNR], char(34)),
	 [WERKS] = quotename([WYT3].[WERKS], char(34)),
	 [PARVW] = quotename([WYT3].[PARVW], char(34)),
	 [PARZA] = quotename([WYT3].[PARZA], char(34)),
	 [ERNAM] = quotename([WYT3].[ERNAM], char(34)),
	 [ERDAT] = convert(varchar(50), [WYT3].[ERDAT], 21),
	 [LIFN2] = quotename([WYT3].[LIFN2], char(34)),
	 [DEFPA] = quotename([WYT3].[DEFPA], char(34)),
	 [PERNR] = quotename([WYT3].[PERNR], char(34)),
	 [PARNR] = quotename([WYT3].[PARNR], char(34)),
	 [ETL_DATA_SOURCE] = quotename([WYT3].[ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename([WYT3].[ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = convert(varchar(50), [WYT3].[ETL_LOAD_DATE], 21)
from SAP_Production.dbo.WYT3