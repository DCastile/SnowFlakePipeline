select
	 [MATERIAL] = quotename([MCH1].[MATERIAL], char(34)),
	 [BATCH] = quotename([MCH1].[BATCH], char(34)),
	 [LASTGOODSRECEIPT] = quotename([MCH1].[LASTGOODSRECEIPT], char(34)),
	 [ETL_DATA_SOURCE] = quotename([MCH1].[ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename([MCH1].[ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = quotename([MCH1].[ETL_LOAD_DATE], char(34))
from SAP_Production.dbo.MCH1