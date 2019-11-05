select
	 [MANDT] = quotename(PA0105.[MANDT], char(34)),
	 [PERNR] = quotename(PA0105.[PERNR], char(34)),
	 [SUBTY] = quotename(PA0105.[SUBTY], char(34)),
	 [OBJPS] = quotename(PA0105.[OBJPS], char(34)),
	 [SPRPS] = quotename(PA0105.[SPRPS], char(34)),
	 [ENDDA] = convert(varchar(50), PA0105.[ENDDA], 21),
	 [BEGDA] = convert(varchar(50), PA0105.[BEGDA], 21),
	 [SEQNR] = quotename(PA0105.[SEQNR], char(34)),
	 [AEDTM] = convert(varchar(50), PA0105.[AEDTM], 21),
	 [UNAME] = quotename(PA0105.[UNAME], char(34)),
	 [HISTO] = quotename(PA0105.[HISTO], char(34)),
	 [ITXEX] = quotename(PA0105.[ITXEX], char(34)),
	 [REFEX] = quotename(PA0105.[REFEX], char(34)),
	 [ORDEX] = quotename(PA0105.[ORDEX], char(34)),
	 [ITBLD] = quotename(PA0105.[ITBLD], char(34)),
	 [PREAS] = quotename(PA0105.[PREAS], char(34)),
	 [FLAG1] = quotename(PA0105.[FLAG1], char(34)),
	 [FLAG2] = quotename(PA0105.[FLAG2], char(34)),
	 [FLAG3] = quotename(PA0105.[FLAG3], char(34)),
	 [FLAG4] = quotename(PA0105.[FLAG4], char(34)),
	 [RESE1] = quotename(PA0105.[RESE1], char(34)),
	 [RESE2] = quotename(PA0105.[RESE2], char(34)),
	 [GRPVL] = quotename(PA0105.[GRPVL], char(34)),
	 [USRTY] = quotename(PA0105.[USRTY], char(34)),
	 [USRID] = quotename(PA0105.[USRID], char(34)),
	 [USRID_LONG] = quotename(PA0105.[USRID_LONG], char(34)),
	 [ETL_DATA_SOURCE] = quotename(PA0105.[ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename(PA0105.[ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = convert(varchar(50), PA0105.[ETL_LOAD_DATE], 21)
from SAP_Production.dbo.PA0105