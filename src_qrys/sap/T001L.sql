select
	 [PLANT] = quotename([T001L].[PLANT], char(34)),
	 [SLOC] = quotename([T001L].[SLOC], char(34)),
	 [SLOCDESC] = quotename([T001L].[SLOCDESC], char(34)),
	 [ETL_DATA_SOURCE] = quotename([T001L].[ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename([T001L].[ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = quotename([T001L].[ETL_LOAD_DATE], char(34))
from SAP_Production.dbo.T001L