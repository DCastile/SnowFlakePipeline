select
	 [MANDT] = quotename([MANDT], char(34)),
	 [PERNR] = quotename([PERNR], char(34)),
	 [SUBTY] = quotename([SUBTY], char(34)),
	 [OBJPS] = quotename([OBJPS], char(34)),
	 [SPRPS] = quotename([SPRPS], char(34)),
	 [ENDDA] = convert(varchar(50), [ENDDA], 21),
	 [BEGDA] = convert(varchar(50), [BEGDA], 21),
	 [SEQNR] = quotename([SEQNR], char(34)),
	 [AEDTM] = convert(varchar(50), [AEDTM], 21),
	 [UNAME] = quotename([UNAME], char(34)),
	 [HISTO] = quotename([HISTO], char(34)),
	 [ITXEX] = quotename([ITXEX], char(34)),
	 [REFEX] = quotename([REFEX], char(34)),
	 [ORDEX] = quotename([ORDEX], char(34)),
	 [ITBLD] = quotename([ITBLD], char(34)),
	 [PREAS] = quotename([PREAS], char(34)),
	 [FLAG1] = quotename([FLAG1], char(34)),
	 [FLAG2] = quotename([FLAG2], char(34)),
	 [FLAG3] = quotename([FLAG3], char(34)),
	 [FLAG4] = quotename([FLAG4], char(34)),
	 [RESE1] = quotename([RESE1], char(34)),
	 [RESE2] = quotename([RESE2], char(34)),
	 [GRPVL] = quotename([GRPVL], char(34)),
	 [BUKRS] = quotename([BUKRS], char(34)),
	 [WERKS] = quotename([WERKS], char(34)),
	 [PERSG] = quotename([PERSG], char(34)),
	 [PERSK] = quotename([PERSK], char(34)),
	 [VDSK1] = quotename([VDSK1], char(34)),
	 [GSBER] = quotename([GSBER], char(34)),
	 [BTRTL] = quotename([BTRTL], char(34)),
	 [JUPER] = quotename([JUPER], char(34)),
	 [ABKRS] = quotename([ABKRS], char(34)),
	 [ANSVH] = quotename([ANSVH], char(34)),
	 [KOSTL] = quotename([KOSTL], char(34)),
	 [ORGEH] = quotename([ORGEH], char(34)),
	 [PLANS] = quotename([PLANS], char(34)),
	 [STELL] = quotename([STELL], char(34)),
	 [MSTBR] = quotename([MSTBR], char(34)),
	 [SACHA] = quotename([SACHA], char(34)),
	 [SACHP] = quotename([SACHP], char(34)),
	 [SACHZ] = quotename([SACHZ], char(34)),
	 [SNAME] = quotename([SNAME], char(34)),
	 [ENAME] = quotename([ENAME], char(34)),
	 [OTYPE] = quotename([OTYPE], char(34)),
	 [SBMOD] = quotename([SBMOD], char(34)),
	 [KOKRS] = quotename([KOKRS], char(34)),
	 [FISTL] = quotename([FISTL], char(34)),
	 [GEBER] = quotename([GEBER], char(34)),
	 [FKBER] = quotename([FKBER], char(34)),
	 [GRANT_NBR] = quotename([GRANT_NBR], char(34)),
	 [SGMNT] = quotename([SGMNT], char(34)),
	 [BUDGET_PD] = quotename([BUDGET_PD], char(34)),
	 [ETL_DATA_SOURCE] = quotename([ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename([ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = convert(varchar(50), [ETL_LOAD_DATE], 21)
from SAP_Production.dbo.PA0001