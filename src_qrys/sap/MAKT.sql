select
	 [MANDT] = quotename([MANDT], char(34)),
	 [MATNR] = quotename([MATNR], char(34)),
	 [SPRAS] = quotename([SPRAS], char(34)),
	 [MAKTX] = quotename([MAKTX], char(34)),
	 [MAKTG] = quotename([MAKTG], char(34)),
	 [ETL_DATA_SOURCE] = quotename([ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename([ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = convert(varchar(50), [ETL_LOAD_DATE], 21)
from SAP_Production.dbo.MAKT