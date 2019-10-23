select
	 [MANDT] = isNull(quotename([MANDT], char(34)), '\N'),
	 [COUNTER] = isNull(quotename([COUNTER], char(34)), '\N'),
	 [PERNR] = isNull(quotename([PERNR], char(34)), '\N'),
	 [WORKDATE] = isNull(convert(varchar(50), [WORKDATE], 21), '\N'),
	 [SKOSTL] = isNull(quotename([SKOSTL], char(34)), '\N'),
	 [LSTAR] = isNull(quotename([LSTAR], char(34)), '\N'),
	 [SEBELN] = isNull(quotename([SEBELN], char(34)), '\N'),
	 [SEBELP] = isNull(quotename([SEBELP], char(34)), '\N'),
	 [SPRZNR] = isNull(quotename([SPRZNR], char(34)), '\N'),
	 [LSTNR] = isNull(quotename([LSTNR], char(34)), '\N'),
	 [RKOSTL] = isNull(quotename([RKOSTL], char(34)), '\N'),
	 [RPROJ] = isNull(quotename([RPROJ], char(34)), '\N'),
	 [RAUFNR] = isNull(quotename([RAUFNR], char(34)), '\N'),
	 [RNPLNR] = isNull(quotename([RNPLNR], char(34)), '\N'),
	 [RAUFPL] = isNull(quotename([RAUFPL], char(34)), '\N'),
	 [RAPLZL] = isNull(quotename([RAPLZL], char(34)), '\N'),
	 [RKDAUF] = isNull(quotename([RKDAUF], char(34)), '\N'),
	 [RKDPOS] = isNull(quotename([RKDPOS], char(34)), '\N'),
	 [RKSTR] = isNull(quotename([RKSTR], char(34)), '\N'),
	 [RPRZNR] = isNull(quotename([RPRZNR], char(34)), '\N'),
	 [PAOBJNR] = isNull(quotename([PAOBJNR], char(34)), '\N'),
	 [FUND] = isNull(quotename([FUND], char(34)), '\N'),
	 [FUNC_AREA] = isNull(quotename([FUNC_AREA], char(34)), '\N'),
	 [GRANT_NBR] = isNull(quotename([GRANT_NBR], char(34)), '\N'),
	 [S_FUND] = isNull(quotename([S_FUND], char(34)), '\N'),
	 [S_FUNC_AREA] = isNull(quotename([S_FUNC_AREA], char(34)), '\N'),
	 [S_GRANT_NBR] = isNull(quotename([S_GRANT_NBR], char(34)), '\N'),
	 [BUDGET_PD] = isNull(quotename([BUDGET_PD], char(34)), '\N'),
	 [SBUDGET_PD] = isNull(quotename([SBUDGET_PD], char(34)), '\N'),
	 [AWART] = isNull(quotename([AWART], char(34)), '\N'),
	 [LGART] = isNull(quotename([LGART], char(34)), '\N'),
	 [KAPID] = isNull(quotename([KAPID], char(34)), '\N'),
	 [SPLIT] = isNull(quotename([SPLIT], char(34)), '\N'),
	 [REINR] = isNull(quotename([REINR], char(34)), '\N'),
	 [WABLNR] = isNull(quotename([WABLNR], char(34)), '\N'),
	 [VERSL] = isNull(quotename([VERSL], char(34)), '\N'),
	 [WTART] = isNull(quotename([WTART], char(34)), '\N'),
	 [BWGRL] = isNull(quotename([BWGRL], char(34)), '\N'),
	 [WAERS] = isNull(quotename([WAERS], char(34)), '\N'),
	 [AUFKZ] = isNull(quotename([AUFKZ], char(34)), '\N'),
	 [TRFGR] = isNull(quotename([TRFGR], char(34)), '\N'),
	 [TRFST] = isNull(quotename([TRFST], char(34)), '\N'),
	 [PRAKN] = isNull(quotename([PRAKN], char(34)), '\N'),
	 [PRAKZ] = isNull(quotename([PRAKZ], char(34)), '\N'),
	 [OTYPE] = isNull(quotename([OTYPE], char(34)), '\N'),
	 [PLANS] = isNull(quotename([PLANS], char(34)), '\N'),
	 [KOKRS] = isNull(quotename([KOKRS], char(34)), '\N'),
	 [MEINH] = isNull(quotename([MEINH], char(34)), '\N'),
	 [TCURR] = isNull(quotename([TCURR], char(34)), '\N'),
	 [PRICE] = isNull(quotename([PRICE], char(34)), '\N'),
	 [ARBID] = isNull(quotename([ARBID], char(34)), '\N'),
	 [WERKS] = isNull(quotename([WERKS], char(34)), '\N'),
	 [AUTYP] = isNull(quotename([AUTYP], char(34)), '\N'),
	 [HRCOSTASG] = isNull(quotename([HRCOSTASG], char(34)), '\N'),
	 [HRKOSTL] = isNull(quotename([HRKOSTL], char(34)), '\N'),
	 [HRLSTAR] = isNull(quotename([HRLSTAR], char(34)), '\N'),
	 [HRFUND] = isNull(quotename([HRFUND], char(34)), '\N'),
	 [HRFUNC_AREA] = isNull(quotename([HRFUNC_AREA], char(34)), '\N'),
	 [HRGRANT_NBR] = isNull(quotename([HRGRANT_NBR], char(34)), '\N'),
	 [BEMOT] = isNull(quotename([BEMOT], char(34)), '\N'),
	 [UNIT] = isNull(quotename([UNIT], char(34)), '\N'),
	 [STATKEYFIG] = isNull(quotename([STATKEYFIG], char(34)), '\N'),
	 [TASKTYPE] = isNull(quotename([TASKTYPE], char(34)), '\N'),
	 [TASKLEVEL] = isNull(quotename([TASKLEVEL], char(34)), '\N'),
	 [TASKCOMPONENT] = isNull(quotename([TASKCOMPONENT], char(34)), '\N'),
	 [BUKRS] = isNull(quotename([BUKRS], char(34)), '\N'),
	 [CPR_GUID] = isNull(quotename([CPR_GUID], char(34)), '\N'),
	 [CPR_EXTID] = isNull(quotename([CPR_EXTID], char(34)), '\N'),
	 [CPR_OBJGUID] = isNull(quotename([CPR_OBJGUID], char(34)), '\N'),
	 [CPR_OBJGEXTID] = isNull(quotename([CPR_OBJGEXTID], char(34)), '\N'),
	 [CPR_OBJTYPE] = isNull(quotename([CPR_OBJTYPE], char(34)), '\N'),
	 [HRBUDGET_PD] = isNull(quotename([HRBUDGET_PD], char(34)), '\N'),
	 [ERSDA] = isNull(convert(varchar(50), [ERSDA], 21), '\N'),
	 [ERSTM] = isNull(quotename([ERSTM], char(34)), '\N'),
	 [ERNAM] = isNull(quotename([ERNAM], char(34)), '\N'),
	 [LAEDA] = isNull(convert(varchar(50), [LAEDA], 21), '\N'),
	 [LAETM] = isNull(quotename([LAETM], char(34)), '\N'),
	 [AENAM] = isNull(quotename([AENAM], char(34)), '\N'),
	 [APNAM] = isNull(quotename([APNAM], char(34)), '\N'),
	 [APDAT] = isNull(convert(varchar(50), [APDAT], 21), '\N'),
	 [WORKITEMID] = isNull(quotename([WORKITEMID], char(34)), '\N'),
	 [LOGSYS] = isNull(quotename([LOGSYS], char(34)), '\N'),
	 [STATUS] = isNull(quotename([STATUS], char(34)), '\N'),
	 [REFCOUNTER] = isNull(quotename([REFCOUNTER], char(34)), '\N'),
	 [REASON] = isNull(quotename([REASON], char(34)), '\N'),
	 [BELNR] = isNull(quotename([BELNR], char(34)), '\N'),
	 [EXTSYSTEM] = isNull(quotename([EXTSYSTEM], char(34)), '\N'),
	 [EXTAPPLICATION] = isNull(quotename([EXTAPPLICATION], char(34)), '\N'),
	 [EXTDOCUMENTNO] = isNull(quotename([EXTDOCUMENTNO], char(34)), '\N'),
	 [TASKCOUNTER] = isNull(quotename([TASKCOUNTER], char(34)), '\N'),
	 [CATSHOURS] = isNull(quotename([CATSHOURS], char(34)), '\N'),
	 [BEGUZ] = isNull(quotename([BEGUZ], char(34)), '\N'),
	 [ENDUZ] = isNull(quotename([ENDUZ], char(34)), '\N'),
	 [VTKEN] = isNull(quotename([VTKEN], char(34)), '\N'),
	 [ALLDF] = isNull(quotename([ALLDF], char(34)), '\N'),
	 [OFMNW] = isNull(quotename([OFMNW], char(34)), '\N'),
	 [PEDD] = isNull(convert(varchar(50), [PEDD], 21), '\N'),
	 [AUERU] = isNull(quotename([AUERU], char(34)), '\N'),
	 [LTXA1] = isNull(quotename([LTXA1], char(34)), '\N'),
	 [LONGTEXT] = isNull(quotename([LONGTEXT], char(34)), '\N'),
	 [ERUZU] = isNull(quotename([ERUZU], char(34)), '\N'),
	 [CATSAMOUNT] = isNull(quotename([CATSAMOUNT], char(34)), '\N'),
	 [CATSQUANTITY] = isNull(quotename([CATSQUANTITY], char(34)), '\N'),
	 [/ITS/YIELD] = isNull(quotename([/ITS/YIELD], char(34)), '\N'),
	 [/ITS/SCRAP] = isNull(quotename([/ITS/SCRAP], char(34)), '\N'),
	 [/ITS/REWORK] = isNull(quotename([/ITS/REWORK], char(34)), '\N'),
	 [/ITS/CON_QTYUNIT] = isNull(quotename([/ITS/CON_QTYUNIT], char(34)), '\N'),
	 [/ITS/TRANS_TO_PP] = isNull(quotename([/ITS/TRANS_TO_PP], char(34)), '\N'),
	 [/ITS/PROD_ORDER] = isNull(quotename([/ITS/PROD_ORDER], char(34)), '\N'),
	 [/ITS/MACHINE] = isNull(quotename([/ITS/MACHINE], char(34)), '\N'),
	 [/ITS/SETUP] = isNull(quotename([/ITS/SETUP], char(34)), '\N'),
	 [/ITS/STARTTIME] = isNull(quotename([/ITS/STARTTIME], char(34)), '\N'),
	 [/ITS/ENDTIME] = isNull(quotename([/ITS/ENDTIME], char(34)), '\N'),
	 [/ITS/COUNTER] = isNull(quotename([/ITS/COUNTER], char(34)), '\N'),
	 [/ITS/MATNR] = isNull(quotename([/ITS/MATNR], char(34)), '\N'),
	 [/ITS/VORNR] = isNull(quotename([/ITS/VORNR], char(34)), '\N'),
	 [/ITS/HOME_CCTR] = isNull(quotename([/ITS/HOME_CCTR], char(34)), '\N'),
	 [ZZ_BILLABLE] = isNull(quotename([ZZ_BILLABLE], char(34)), '\N'),
	 [ETL_DATA_SOURCE] = isNull(quotename([ETL_DATA_SOURCE], char(34)), '\N'),
	 [ETL_PROCESS_ID] = isNull(quotename([ETL_PROCESS_ID], char(34)), '\N'),
	 [ETL_LOAD_DATE] = isNull(convert(varchar(50), [ETL_LOAD_DATE], 21), '\N')
from SAP_Production.dbo.CATSDB