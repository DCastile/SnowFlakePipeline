select
	 [PLANT] = quotename([PLANT], char(34)),
	 [SLOC] = quotename([SLOC], char(34)),
	 [SLOCDESC] = quotename([SLOCDESC], char(34)),
	 [ETL_DATA_SOURCE] = quotename([ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename([ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = quotename([ETL_LOAD_DATE], char(34))
from SAP_Production.dbo.T001L