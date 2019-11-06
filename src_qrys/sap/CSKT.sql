select
	 [MANDT] = quotename([CSKT].[MANDT], char(34)),
	 [SPRAS] = quotename([CSKT].[SPRAS], char(34)),
	 [KOKRS] = quotename([CSKT].[KOKRS], char(34)),
	 [KOSTL] = quotename([CSKT].[KOSTL], char(34)),
	 [DATBI] = convert(varchar(50), [CSKT].[DATBI], 21),
	 [KTEXT] = quotename([CSKT].[KTEXT], char(34)),
	 [LTEXT] = quotename([CSKT].[LTEXT], char(34)),
	 [MCTXT] = quotename([CSKT].[MCTXT], char(34)),
	 [ETL_DATA_SOURCE] = quotename([CSKT].[ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename([CSKT].[ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = convert(varchar(50), [CSKT].[ETL_LOAD_DATE], 21)
from SAP_Production.dbo.CSKT