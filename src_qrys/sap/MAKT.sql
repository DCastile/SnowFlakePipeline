select
	 [MANDT] = quotename([MAKT].[MANDT], char(34)),
	 [MATNR] = quotename([MAKT].[MATNR], char(34)),
	 [SPRAS] = quotename([MAKT].[SPRAS], char(34)),
	 [MAKTX] = quotename([MAKT].[MAKTX], char(34)),
	 [MAKTG] = quotename([MAKT].[MAKTG], char(34)),
	 [ETL_DATA_SOURCE] = quotename([MAKT].[ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename([MAKT].[ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = convert(varchar(50), [MAKT].[ETL_LOAD_DATE], 21)
from SAP_Production.dbo.MAKT