select
	 [MANDT] = quotename([EKKN].[MANDT], char(34)),
	 [EBELN] = quotename([EKKN].[EBELN], char(34)),
	 [EBELP] = quotename([EKKN].[EBELP], char(34)),
	 [ZEKKN] = quotename([EKKN].[ZEKKN], char(34)),
	 [LOEKZ] = quotename([EKKN].[LOEKZ], char(34)),
	 [AEDAT] = convert(varchar(50), [EKKN].[AEDAT], 21),
	 [KFLAG] = quotename([EKKN].[KFLAG], char(34)),
	 [MENGE] = quotename([EKKN].[MENGE], char(34)),
	 [VPROZ] = quotename([EKKN].[VPROZ], char(34)),
	 [NETWR] = quotename([EKKN].[NETWR], char(34)),
	 [SAKTO] = quotename([EKKN].[SAKTO], char(34)),
	 [GSBER] = quotename([EKKN].[GSBER], char(34)),
	 [KOSTL] = quotename([EKKN].[KOSTL], char(34)),
	 [PROJN] = quotename([EKKN].[PROJN], char(34)),
	 [VBELN] = quotename([EKKN].[VBELN], char(34)),
	 [VBELP] = quotename([EKKN].[VBELP], char(34)),
	 [VETEN] = quotename([EKKN].[VETEN], char(34)),
	 [KZBRB] = quotename([EKKN].[KZBRB], char(34)),
	 [ANLN1] = quotename([EKKN].[ANLN1], char(34)),
	 [ANLN2] = quotename([EKKN].[ANLN2], char(34)),
	 [AUFNR] = quotename([EKKN].[AUFNR], char(34)),
	 [WEMPF] = quotename([EKKN].[WEMPF], char(34)),
	 [ABLAD] = quotename([EKKN].[ABLAD], char(34)),
	 [KOKRS] = quotename([EKKN].[KOKRS], char(34)),
	 [XBKST] = quotename([EKKN].[XBKST], char(34)),
	 [XBAUF] = quotename([EKKN].[XBAUF], char(34)),
	 [XBPRO] = quotename([EKKN].[XBPRO], char(34)),
	 [EREKZ] = quotename([EKKN].[EREKZ], char(34)),
	 [KSTRG] = quotename([EKKN].[KSTRG], char(34)),
	 [PAOBJNR] = quotename([EKKN].[PAOBJNR], char(34)),
	 [PRCTR] = quotename([EKKN].[PRCTR], char(34)),
	 [PS_PSP_PNR] = quotename([EKKN].[PS_PSP_PNR], char(34)),
	 [NPLNR] = quotename([EKKN].[NPLNR], char(34)),
	 [AUFPL] = quotename([EKKN].[AUFPL], char(34)),
	 [IMKEY] = quotename([EKKN].[IMKEY], char(34)),
	 [APLZL] = quotename([EKKN].[APLZL], char(34)),
	 [VPTNR] = quotename([EKKN].[VPTNR], char(34)),
	 [FIPOS] = quotename([EKKN].[FIPOS], char(34)),
	 [RECID] = quotename([EKKN].[RECID], char(34)),
	 [FISTL] = quotename([EKKN].[FISTL], char(34)),
	 [GEBER] = quotename([EKKN].[GEBER], char(34)),
	 [FKBER] = quotename([EKKN].[FKBER], char(34)),
	 [DABRZ] = convert(varchar(50), [EKKN].[DABRZ], 21),
	 [AUFPL_ORD] = quotename([EKKN].[AUFPL_ORD], char(34)),
	 [APLZL_ORD] = quotename([EKKN].[APLZL_ORD], char(34)),
	 [MWSKZ] = quotename([EKKN].[MWSKZ], char(34)),
	 [TXJCD] = quotename([EKKN].[TXJCD], char(34)),
	 [NAVNW] = quotename([EKKN].[NAVNW], char(34)),
	 [KBLNR] = quotename([EKKN].[KBLNR], char(34)),
	 [KBLPOS] = quotename([EKKN].[KBLPOS], char(34)),
	 [LSTAR] = quotename([EKKN].[LSTAR], char(34)),
	 [PRZNR] = quotename([EKKN].[PRZNR], char(34)),
	 [GRANT_NBR] = quotename([EKKN].[GRANT_NBR], char(34)),
	 [BUDGET_PD] = quotename([EKKN].[BUDGET_PD], char(34)),
	 [FM_SPLIT_BATCH] = quotename([EKKN].[FM_SPLIT_BATCH], char(34)),
	 [FM_SPLIT_BEGRU] = quotename([EKKN].[FM_SPLIT_BEGRU], char(34)),
	 [AA_FINAL_IND] = quotename([EKKN].[AA_FINAL_IND], char(34)),
	 [AA_FINAL_REASON] = quotename([EKKN].[AA_FINAL_REASON], char(34)),
	 [AA_FINAL_QTY] = quotename([EKKN].[AA_FINAL_QTY], char(34)),
	 [AA_FINAL_QTY_F] = quotename([EKKN].[AA_FINAL_QTY_F], char(34)),
	 [MENGE_F] = quotename([EKKN].[MENGE_F], char(34)),
	 [EGRUP] = quotename([EKKN].[EGRUP], char(34)),
	 [VNAME] = quotename([EKKN].[VNAME], char(34)),
	 [TCOBJNR] = quotename([EKKN].[TCOBJNR], char(34)),
	 [DATEOFSERVICE] = convert(varchar(50), [EKKN].[DATEOFSERVICE], 21),
	 [NOTAXCORR] = quotename([EKKN].[NOTAXCORR], char(34)),
	 [DIFFOPTRATE] = quotename([EKKN].[DIFFOPTRATE], char(34)),
	 [HASDIFFOPTRATE] = quotename([EKKN].[HASDIFFOPTRATE], char(34)),
	 [ETL_DATA_SOURCE] = quotename([EKKN].[ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename([EKKN].[ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = convert(varchar(50), [EKKN].[ETL_LOAD_DATE], 21)
from SAP_Production.dbo.EKKN