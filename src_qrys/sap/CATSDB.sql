select
	 [MANDT] = quotename([MANDT], char(34)),
	 [COUNTER] = quotename([COUNTER], char(34)),
	 [PERNR] = quotename([PERNR], char(34)),
	 [WORKDATE] = convert(varchar(50), [WORKDATE], 21),
	 [SKOSTL] = quotename([SKOSTL], char(34)),
	 [LSTAR] = quotename([LSTAR], char(34)),
	 [SEBELN] = quotename([SEBELN], char(34)),
	 [SEBELP] = quotename([SEBELP], char(34)),
	 [SPRZNR] = quotename([SPRZNR], char(34)),
	 [LSTNR] = quotename([LSTNR], char(34)),
	 [RKOSTL] = quotename([RKOSTL], char(34)),
	 [RPROJ] = quotename([RPROJ], char(34)),
	 [RAUFNR] = quotename([RAUFNR], char(34)),
	 [RNPLNR] = quotename([RNPLNR], char(34)),
	 [RAUFPL] = quotename([RAUFPL], char(34)),
	 [RAPLZL] = quotename([RAPLZL], char(34)),
	 [RKDAUF] = quotename([RKDAUF], char(34)),
	 [RKDPOS] = quotename([RKDPOS], char(34)),
	 [RKSTR] = quotename([RKSTR], char(34)),
	 [RPRZNR] = quotename([RPRZNR], char(34)),
	 [PAOBJNR] = quotename([PAOBJNR], char(34)),
	 [FUND] = quotename([FUND], char(34)),
	 [FUNC_AREA] = quotename([FUNC_AREA], char(34)),
	 [GRANT_NBR] = quotename([GRANT_NBR], char(34)),
	 [S_FUND] = quotename([S_FUND], char(34)),
	 [S_FUNC_AREA] = quotename([S_FUNC_AREA], char(34)),
	 [S_GRANT_NBR] = quotename([S_GRANT_NBR], char(34)),
	 [BUDGET_PD] = quotename([BUDGET_PD], char(34)),
	 [SBUDGET_PD] = quotename([SBUDGET_PD], char(34)),
	 [AWART] = quotename([AWART], char(34)),
	 [LGART] = quotename([LGART], char(34)),
	 [KAPID] = quotename([KAPID], char(34)),
	 [SPLIT] = quotename([SPLIT], char(34)),
	 [REINR] = quotename([REINR], char(34)),
	 [WABLNR] = quotename([WABLNR], char(34)),
	 [VERSL] = quotename([VERSL], char(34)),
	 [WTART] = quotename([WTART], char(34)),
	 [BWGRL] = quotename([BWGRL], char(34)),
	 [WAERS] = quotename([WAERS], char(34)),
	 [AUFKZ] = quotename([AUFKZ], char(34)),
	 [TRFGR] = quotename([TRFGR], char(34)),
	 [TRFST] = quotename([TRFST], char(34)),
	 [PRAKN] = quotename([PRAKN], char(34)),
	 [PRAKZ] = quotename([PRAKZ], char(34)),
	 [OTYPE] = quotename([OTYPE], char(34)),
	 [PLANS] = quotename([PLANS], char(34)),
	 [KOKRS] = quotename([KOKRS], char(34)),
	 [MEINH] = quotename([MEINH], char(34)),
	 [TCURR] = quotename([TCURR], char(34)),
	 [PRICE] = quotename([PRICE], char(34)),
	 [ARBID] = quotename([ARBID], char(34)),
	 [WERKS] = quotename([WERKS], char(34)),
	 [AUTYP] = quotename([AUTYP], char(34)),
	 [HRCOSTASG] = quotename([HRCOSTASG], char(34)),
	 [HRKOSTL] = quotename([HRKOSTL], char(34)),
	 [HRLSTAR] = quotename([HRLSTAR], char(34)),
	 [HRFUND] = quotename([HRFUND], char(34)),
	 [HRFUNC_AREA] = quotename([HRFUNC_AREA], char(34)),
	 [HRGRANT_NBR] = quotename([HRGRANT_NBR], char(34)),
	 [BEMOT] = quotename([BEMOT], char(34)),
	 [UNIT] = quotename([UNIT], char(34)),
	 [STATKEYFIG] = quotename([STATKEYFIG], char(34)),
	 [TASKTYPE] = quotename([TASKTYPE], char(34)),
	 [TASKLEVEL] = quotename([TASKLEVEL], char(34)),
	 [TASKCOMPONENT] = quotename([TASKCOMPONENT], char(34)),
	 [BUKRS] = quotename([BUKRS], char(34)),
	 [CPR_GUID] = quotename([CPR_GUID], char(34)),
	 [CPR_EXTID] = quotename([CPR_EXTID], char(34)),
	 [CPR_OBJGUID] = quotename([CPR_OBJGUID], char(34)),
	 [CPR_OBJGEXTID] = quotename([CPR_OBJGEXTID], char(34)),
	 [CPR_OBJTYPE] = quotename([CPR_OBJTYPE], char(34)),
	 [HRBUDGET_PD] = quotename([HRBUDGET_PD], char(34)),
	 [ERSDA] = convert(varchar(50), [ERSDA], 21),
	 [ERSTM] = quotename([ERSTM], char(34)),
	 [ERNAM] = quotename([ERNAM], char(34)),
	 [LAEDA] = convert(varchar(50), [LAEDA], 21),
	 [LAETM] = quotename([LAETM], char(34)),
	 [AENAM] = quotename([AENAM], char(34)),
	 [APNAM] = quotename([APNAM], char(34)),
	 [APDAT] = convert(varchar(50), [APDAT], 21),
	 [WORKITEMID] = quotename([WORKITEMID], char(34)),
	 [LOGSYS] = quotename([LOGSYS], char(34)),
	 [STATUS] = quotename([STATUS], char(34)),
	 [REFCOUNTER] = quotename([REFCOUNTER], char(34)),
	 [REASON] = quotename([REASON], char(34)),
	 [BELNR] = quotename([BELNR], char(34)),
	 [EXTSYSTEM] = quotename([EXTSYSTEM], char(34)),
	 [EXTAPPLICATION] = quotename([EXTAPPLICATION], char(34)),
	 [EXTDOCUMENTNO] = quotename([EXTDOCUMENTNO], char(34)),
	 [TASKCOUNTER] = quotename([TASKCOUNTER], char(34)),
	 [CATSHOURS] = quotename([CATSHOURS], char(34)),
	 [BEGUZ] = quotename([BEGUZ], char(34)),
	 [ENDUZ] = quotename([ENDUZ], char(34)),
	 [VTKEN] = quotename([VTKEN], char(34)),
	 [ALLDF] = quotename([ALLDF], char(34)),
	 [OFMNW] = quotename([OFMNW], char(34)),
	 [PEDD] = convert(varchar(50), [PEDD], 21),
	 [AUERU] = quotename([AUERU], char(34)),
	 [LTXA1] = quotename([LTXA1], char(34)),
	 [LONGTEXT] = quotename([LONGTEXT], char(34)),
	 [ERUZU] = quotename([ERUZU], char(34)),
	 [CATSAMOUNT] = quotename([CATSAMOUNT], char(34)),
	 [CATSQUANTITY] = quotename([CATSQUANTITY], char(34)),
	 [/ITS/YIELD] = quotename([/ITS/YIELD], char(34)),
	 [/ITS/SCRAP] = quotename([/ITS/SCRAP], char(34)),
	 [/ITS/REWORK] = quotename([/ITS/REWORK], char(34)),
	 [/ITS/CON_QTYUNIT] = quotename([/ITS/CON_QTYUNIT], char(34)),
	 [/ITS/TRANS_TO_PP] = quotename([/ITS/TRANS_TO_PP], char(34)),
	 [/ITS/PROD_ORDER] = quotename([/ITS/PROD_ORDER], char(34)),
	 [/ITS/MACHINE] = quotename([/ITS/MACHINE], char(34)),
	 [/ITS/SETUP] = quotename([/ITS/SETUP], char(34)),
	 [/ITS/STARTTIME] = quotename([/ITS/STARTTIME], char(34)),
	 [/ITS/ENDTIME] = quotename([/ITS/ENDTIME], char(34)),
	 [/ITS/COUNTER] = quotename([/ITS/COUNTER], char(34)),
	 [/ITS/MATNR] = quotename([/ITS/MATNR], char(34)),
	 [/ITS/VORNR] = quotename([/ITS/VORNR], char(34)),
	 [/ITS/HOME_CCTR] = quotename([/ITS/HOME_CCTR], char(34)),
	 [ZZ_BILLABLE] = quotename([ZZ_BILLABLE], char(34)),
	 [ETL_DATA_SOURCE] = quotename([ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename([ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = convert(varchar(50), [ETL_LOAD_DATE], 21)
from SAP_Production.dbo.CATSDB