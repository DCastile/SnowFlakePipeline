select
	 [MANDT] = quotename([TBSLT].[MANDT], char(34)),
	 [SPRAS] = quotename([TBSLT].[SPRAS], char(34)),
	 [BSCHL] = quotename([TBSLT].[BSCHL], char(34)),
	 [UMSKZ] = quotename([TBSLT].[UMSKZ], char(34)),
	 [LTEXT] = quotename([TBSLT].[LTEXT], char(34)),
	 [ETL_DATA_SOURCE] = quotename([TBSLT].[ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename([TBSLT].[ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = quotename([TBSLT].[ETL_LOAD_DATE], char(34))
from SAP_Production.dbo.TBSLT