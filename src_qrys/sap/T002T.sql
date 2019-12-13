select
	 [SPRAS] = quotename([T002T].[SPRAS], char(34)),
	 [SPRSL] = quotename([T002T].[SPRSL], char(34)),
	 [SPTXT] = quotename([T002T].[SPTXT], char(34)),
	 [ETL_DATA_SOURCE] = quotename([T002T].[ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename([T002T].[ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = convert(varchar(50), [T002T].[ETL_LOAD_DATE], 21)
from SAP_Production.dbo.T002T