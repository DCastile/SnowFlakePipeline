select
	 [MANDT] = quotename(KOTD001.[MANDT], char(34)),
	 [KAPPL] = quotename(KOTD001.[KAPPL], char(34)),
	 [KSCHL] = quotename(KOTD001.[KSCHL], char(34)),
	 [MATWA] = quotename(KOTD001.[MATWA], char(34)),
	 [DATBI] = convert(varchar(50), KOTD001.[DATBI], 21),
	 [DATAB] = convert(varchar(50), KOTD001.[DATAB], 21),
	 [KNUMH] = quotename(KOTD001.[KNUMH], char(34)),
	 [ETL_DATA_SOURCE] = quotename(KOTD001.[ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename(KOTD001.[ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = convert(varchar(50), KOTD001.[ETL_LOAD_DATE], 21)
from SAP_Production.dbo.KOTD001