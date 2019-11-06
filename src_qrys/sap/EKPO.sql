select
	 [MANDT] = quotename([EKPO].[MANDT], char(34)),
	 [EBELN] = quotename([EKPO].[EBELN], char(34)),
	 [EBELP] = quotename([EKPO].[EBELP], char(34)),
	 [LOEKZ] = quotename([EKPO].[LOEKZ], char(34)),
	 [STATU] = quotename([EKPO].[STATU], char(34)),
	 [AEDAT] = convert(varchar(50), [EKPO].[AEDAT], 21),
	 [TXZ01] = quotename([EKPO].[TXZ01], char(34)),
	 [MATNR] = quotename([EKPO].[MATNR], char(34)),
	 [EMATN] = quotename([EKPO].[EMATN], char(34)),
	 [BUKRS] = quotename([EKPO].[BUKRS], char(34)),
	 [WERKS] = quotename([EKPO].[WERKS], char(34)),
	 [LGORT] = quotename([EKPO].[LGORT], char(34)),
	 [BEDNR] = quotename([EKPO].[BEDNR], char(34)),
	 [MATKL] = quotename([EKPO].[MATKL], char(34)),
	 [INFNR] = quotename([EKPO].[INFNR], char(34)),
	 [IDNLF] = quotename([EKPO].[IDNLF], char(34)),
	 [KTMNG] = quotename([EKPO].[KTMNG], char(34)),
	 [MENGE] = quotename([EKPO].[MENGE], char(34)),
	 [MEINS] = quotename([EKPO].[MEINS], char(34)),
	 [BPRME] = quotename([EKPO].[BPRME], char(34)),
	 [BPUMZ] = quotename([EKPO].[BPUMZ], char(34)),
	 [BPUMN] = quotename([EKPO].[BPUMN], char(34)),
	 [UMREZ] = quotename([EKPO].[UMREZ], char(34)),
	 [UMREN] = quotename([EKPO].[UMREN], char(34)),
	 [NETPR] = quotename([EKPO].[NETPR], char(34)),
	 [PEINH] = quotename([EKPO].[PEINH], char(34)),
	 [NETWR] = quotename([EKPO].[NETWR], char(34)),
	 [BRTWR] = quotename([EKPO].[BRTWR], char(34)),
	 [AGDAT] = convert(varchar(50), [EKPO].[AGDAT], 21),
	 [WEBAZ] = quotename([EKPO].[WEBAZ], char(34)),
	 [MWSKZ] = quotename([EKPO].[MWSKZ], char(34)),
	 [BONUS] = quotename([EKPO].[BONUS], char(34)),
	 [INSMK] = quotename([EKPO].[INSMK], char(34)),
	 [SPINF] = quotename([EKPO].[SPINF], char(34)),
	 [PRSDR] = quotename([EKPO].[PRSDR], char(34)),
	 [SCHPR] = quotename([EKPO].[SCHPR], char(34)),
	 [MAHNZ] = quotename([EKPO].[MAHNZ], char(34)),
	 [MAHN1] = quotename([EKPO].[MAHN1], char(34)),
	 [MAHN2] = quotename([EKPO].[MAHN2], char(34)),
	 [MAHN3] = quotename([EKPO].[MAHN3], char(34)),
	 [UEBTO] = quotename([EKPO].[UEBTO], char(34)),
	 [UEBTK] = quotename([EKPO].[UEBTK], char(34)),
	 [UNTTO] = quotename([EKPO].[UNTTO], char(34)),
	 [BWTAR] = quotename([EKPO].[BWTAR], char(34)),
	 [BWTTY] = quotename([EKPO].[BWTTY], char(34)),
	 [ABSKZ] = quotename([EKPO].[ABSKZ], char(34)),
	 [AGMEM] = quotename([EKPO].[AGMEM], char(34)),
	 [ELIKZ] = quotename([EKPO].[ELIKZ], char(34)),
	 [EREKZ] = quotename([EKPO].[EREKZ], char(34)),
	 [PSTYP] = quotename([EKPO].[PSTYP], char(34)),
	 [KNTTP] = quotename([EKPO].[KNTTP], char(34)),
	 [KZVBR] = quotename([EKPO].[KZVBR], char(34)),
	 [VRTKZ] = quotename([EKPO].[VRTKZ], char(34)),
	 [TWRKZ] = quotename([EKPO].[TWRKZ], char(34)),
	 [WEPOS] = quotename([EKPO].[WEPOS], char(34)),
	 [WEUNB] = quotename([EKPO].[WEUNB], char(34)),
	 [REPOS] = quotename([EKPO].[REPOS], char(34)),
	 [WEBRE] = quotename([EKPO].[WEBRE], char(34)),
	 [KZABS] = quotename([EKPO].[KZABS], char(34)),
	 [LABNR] = quotename([EKPO].[LABNR], char(34)),
	 [KONNR] = quotename([EKPO].[KONNR], char(34)),
	 [KTPNR] = quotename([EKPO].[KTPNR], char(34)),
	 [ABDAT] = convert(varchar(50), [EKPO].[ABDAT], 21),
	 [ABFTZ] = quotename([EKPO].[ABFTZ], char(34)),
	 [ETFZ1] = quotename([EKPO].[ETFZ1], char(34)),
	 [ETFZ2] = quotename([EKPO].[ETFZ2], char(34)),
	 [KZSTU] = quotename([EKPO].[KZSTU], char(34)),
	 [NOTKZ] = quotename([EKPO].[NOTKZ], char(34)),
	 [LMEIN] = quotename([EKPO].[LMEIN], char(34)),
	 [EVERS] = quotename([EKPO].[EVERS], char(34)),
	 [ZWERT] = quotename([EKPO].[ZWERT], char(34)),
	 [NAVNW] = quotename([EKPO].[NAVNW], char(34)),
	 [ABMNG] = quotename([EKPO].[ABMNG], char(34)),
	 [PRDAT] = convert(varchar(50), [EKPO].[PRDAT], 21),
	 [BSTYP] = quotename([EKPO].[BSTYP], char(34)),
	 [EFFWR] = quotename([EKPO].[EFFWR], char(34)),
	 [XOBLR] = quotename([EKPO].[XOBLR], char(34)),
	 [KUNNR] = quotename([EKPO].[KUNNR], char(34)),
	 [ADRNR] = quotename([EKPO].[ADRNR], char(34)),
	 [EKKOL] = quotename([EKPO].[EKKOL], char(34)),
	 [SKTOF] = quotename([EKPO].[SKTOF], char(34)),
	 [STAFO] = quotename([EKPO].[STAFO], char(34)),
	 [PLIFZ] = quotename([EKPO].[PLIFZ], char(34)),
	 [NTGEW] = quotename([EKPO].[NTGEW], char(34)),
	 [GEWEI] = quotename([EKPO].[GEWEI], char(34)),
	 [TXJCD] = quotename([EKPO].[TXJCD], char(34)),
	 [ETDRK] = quotename([EKPO].[ETDRK], char(34)),
	 [SOBKZ] = quotename([EKPO].[SOBKZ], char(34)),
	 [ARSNR] = quotename([EKPO].[ARSNR], char(34)),
	 [ARSPS] = quotename([EKPO].[ARSPS], char(34)),
	 [INSNC] = quotename([EKPO].[INSNC], char(34)),
	 [SSQSS] = quotename([EKPO].[SSQSS], char(34)),
	 [ZGTYP] = quotename([EKPO].[ZGTYP], char(34)),
	 [EAN11] = quotename([EKPO].[EAN11], char(34)),
	 [BSTAE] = quotename([EKPO].[BSTAE], char(34)),
	 [REVLV] = quotename([EKPO].[REVLV], char(34)),
	 [GEBER] = quotename([EKPO].[GEBER], char(34)),
	 [FISTL] = quotename([EKPO].[FISTL], char(34)),
	 [FIPOS] = quotename([EKPO].[FIPOS], char(34)),
	 [KO_GSBER] = quotename([EKPO].[KO_GSBER], char(34)),
	 [KO_PARGB] = quotename([EKPO].[KO_PARGB], char(34)),
	 [KO_PRCTR] = quotename([EKPO].[KO_PRCTR], char(34)),
	 [KO_PPRCTR] = quotename([EKPO].[KO_PPRCTR], char(34)),
	 [MEPRF] = quotename([EKPO].[MEPRF], char(34)),
	 [BRGEW] = quotename([EKPO].[BRGEW], char(34)),
	 [VOLUM] = quotename([EKPO].[VOLUM], char(34)),
	 [VOLEH] = quotename([EKPO].[VOLEH], char(34)),
	 [INCO1] = quotename([EKPO].[INCO1], char(34)),
	 [INCO2] = quotename([EKPO].[INCO2], char(34)),
	 [VORAB] = quotename([EKPO].[VORAB], char(34)),
	 [KOLIF] = quotename([EKPO].[KOLIF], char(34)),
	 [LTSNR] = quotename([EKPO].[LTSNR], char(34)),
	 [PACKNO] = quotename([EKPO].[PACKNO], char(34)),
	 [FPLNR] = quotename([EKPO].[FPLNR], char(34)),
	 [GNETWR] = quotename([EKPO].[GNETWR], char(34)),
	 [STAPO] = quotename([EKPO].[STAPO], char(34)),
	 [UEBPO] = quotename([EKPO].[UEBPO], char(34)),
	 [LEWED] = convert(varchar(50), [EKPO].[LEWED], 21),
	 [EMLIF] = quotename([EKPO].[EMLIF], char(34)),
	 [LBLKZ] = quotename([EKPO].[LBLKZ], char(34)),
	 [SATNR] = quotename([EKPO].[SATNR], char(34)),
	 [ATTYP] = quotename([EKPO].[ATTYP], char(34)),
	 [VSART] = quotename([EKPO].[VSART], char(34)),
	 [HANDOVERLOC] = quotename([EKPO].[HANDOVERLOC], char(34)),
	 [KANBA] = quotename([EKPO].[KANBA], char(34)),
	 [ADRN2] = quotename([EKPO].[ADRN2], char(34)),
	 [CUOBJ] = quotename([EKPO].[CUOBJ], char(34)),
	 [XERSY] = quotename([EKPO].[XERSY], char(34)),
	 [EILDT] = convert(varchar(50), [EKPO].[EILDT], 21),
	 [DRDAT] = convert(varchar(50), [EKPO].[DRDAT], 21),
	 [DRUHR] = quotename([EKPO].[DRUHR], char(34)),
	 [DRUNR] = quotename([EKPO].[DRUNR], char(34)),
	 [AKTNR] = quotename([EKPO].[AKTNR], char(34)),
	 [ABELN] = quotename([EKPO].[ABELN], char(34)),
	 [ABELP] = quotename([EKPO].[ABELP], char(34)),
	 [ANZPU] = quotename([EKPO].[ANZPU], char(34)),
	 [PUNEI] = quotename([EKPO].[PUNEI], char(34)),
	 [SAISO] = quotename([EKPO].[SAISO], char(34)),
	 [SAISJ] = quotename([EKPO].[SAISJ], char(34)),
	 [EBON2] = quotename([EKPO].[EBON2], char(34)),
	 [EBON3] = quotename([EKPO].[EBON3], char(34)),
	 [EBONF] = quotename([EKPO].[EBONF], char(34)),
	 [MLMAA] = quotename([EKPO].[MLMAA], char(34)),
	 [MHDRZ] = quotename([EKPO].[MHDRZ], char(34)),
	 [ANFNR] = quotename([EKPO].[ANFNR], char(34)),
	 [ANFPS] = quotename([EKPO].[ANFPS], char(34)),
	 [KZKFG] = quotename([EKPO].[KZKFG], char(34)),
	 [USEQU] = quotename([EKPO].[USEQU], char(34)),
	 [UMSOK] = quotename([EKPO].[UMSOK], char(34)),
	 [BANFN] = quotename([EKPO].[BANFN], char(34)),
	 [BNFPO] = quotename([EKPO].[BNFPO], char(34)),
	 [MTART] = quotename([EKPO].[MTART], char(34)),
	 [UPTYP] = quotename([EKPO].[UPTYP], char(34)),
	 [UPVOR] = quotename([EKPO].[UPVOR], char(34)),
	 [KZWI1] = quotename([EKPO].[KZWI1], char(34)),
	 [KZWI2] = quotename([EKPO].[KZWI2], char(34)),
	 [KZWI3] = quotename([EKPO].[KZWI3], char(34)),
	 [KZWI4] = quotename([EKPO].[KZWI4], char(34)),
	 [KZWI5] = quotename([EKPO].[KZWI5], char(34)),
	 [KZWI6] = quotename([EKPO].[KZWI6], char(34)),
	 [SIKGR] = quotename([EKPO].[SIKGR], char(34)),
	 [MFZHI] = quotename([EKPO].[MFZHI], char(34)),
	 [FFZHI] = quotename([EKPO].[FFZHI], char(34)),
	 [RETPO] = quotename([EKPO].[RETPO], char(34)),
	 [AUREL] = quotename([EKPO].[AUREL], char(34)),
	 [BSGRU] = quotename([EKPO].[BSGRU], char(34)),
	 [LFRET] = quotename([EKPO].[LFRET], char(34)),
	 [MFRGR] = quotename([EKPO].[MFRGR], char(34)),
	 [NRFHG] = quotename([EKPO].[NRFHG], char(34)),
	 [J_1BNBM] = quotename([EKPO].[J_1BNBM], char(34)),
	 [J_1BMATUSE] = quotename([EKPO].[J_1BMATUSE], char(34)),
	 [J_1BMATORG] = quotename([EKPO].[J_1BMATORG], char(34)),
	 [J_1BOWNPRO] = quotename([EKPO].[J_1BOWNPRO], char(34)),
	 [J_1BINDUST] = quotename([EKPO].[J_1BINDUST], char(34)),
	 [ABUEB] = quotename([EKPO].[ABUEB], char(34)),
	 [NLABD] = convert(varchar(50), [EKPO].[NLABD], 21),
	 [NFABD] = convert(varchar(50), [EKPO].[NFABD], 21),
	 [KZBWS] = quotename([EKPO].[KZBWS], char(34)),
	 [BONBA] = quotename([EKPO].[BONBA], char(34)),
	 [FABKZ] = quotename([EKPO].[FABKZ], char(34)),
	 [J_1AINDXP] = quotename([EKPO].[J_1AINDXP], char(34)),
	 [J_1AIDATEP] = convert(varchar(50), [EKPO].[J_1AIDATEP], 21),
	 [MPROF] = quotename([EKPO].[MPROF], char(34)),
	 [EGLKZ] = quotename([EKPO].[EGLKZ], char(34)),
	 [KZTLF] = quotename([EKPO].[KZTLF], char(34)),
	 [KZFME] = quotename([EKPO].[KZFME], char(34)),
	 [RDPRF] = quotename([EKPO].[RDPRF], char(34)),
	 [TECHS] = quotename([EKPO].[TECHS], char(34)),
	 [CHG_SRV] = quotename([EKPO].[CHG_SRV], char(34)),
	 [CHG_FPLNR] = quotename([EKPO].[CHG_FPLNR], char(34)),
	 [MFRPN] = quotename([EKPO].[MFRPN], char(34)),
	 [MFRNR] = quotename([EKPO].[MFRNR], char(34)),
	 [EMNFR] = quotename([EKPO].[EMNFR], char(34)),
	 [NOVET] = quotename([EKPO].[NOVET], char(34)),
	 [AFNAM] = quotename([EKPO].[AFNAM], char(34)),
	 [TZONRC] = quotename([EKPO].[TZONRC], char(34)),
	 [IPRKZ] = quotename([EKPO].[IPRKZ], char(34)),
	 [LEBRE] = quotename([EKPO].[LEBRE], char(34)),
	 [BERID] = quotename([EKPO].[BERID], char(34)),
	 [XCONDITIONS] = quotename([EKPO].[XCONDITIONS], char(34)),
	 [APOMS] = quotename([EKPO].[APOMS], char(34)),
	 [CCOMP] = quotename([EKPO].[CCOMP], char(34)),
	 [GRANT_NBR] = quotename([EKPO].[GRANT_NBR], char(34)),
	 [FKBER] = quotename([EKPO].[FKBER], char(34)),
	 [STATUS] = quotename([EKPO].[STATUS], char(34)),
	 [RESLO] = quotename([EKPO].[RESLO], char(34)),
	 [KBLNR] = quotename([EKPO].[KBLNR], char(34)),
	 [KBLPOS] = quotename([EKPO].[KBLPOS], char(34)),
	 [WEORA] = quotename([EKPO].[WEORA], char(34)),
	 [SRV_BAS_COM] = quotename([EKPO].[SRV_BAS_COM], char(34)),
	 [PRIO_URG] = quotename([EKPO].[PRIO_URG], char(34)),
	 [PRIO_REQ] = quotename([EKPO].[PRIO_REQ], char(34)),
	 [EMPST] = quotename([EKPO].[EMPST], char(34)),
	 [DIFF_INVOICE] = quotename([EKPO].[DIFF_INVOICE], char(34)),
	 [TRMRISK_RELEVANT] = quotename([EKPO].[TRMRISK_RELEVANT], char(34)),
	 [SPE_ABGRU] = quotename([EKPO].[SPE_ABGRU], char(34)),
	 [SPE_CRM_SO] = quotename([EKPO].[SPE_CRM_SO], char(34)),
	 [SPE_CRM_SO_ITEM] = quotename([EKPO].[SPE_CRM_SO_ITEM], char(34)),
	 [SPE_CRM_REF_SO] = quotename([EKPO].[SPE_CRM_REF_SO], char(34)),
	 [SPE_CRM_REF_ITEM] = quotename([EKPO].[SPE_CRM_REF_ITEM], char(34)),
	 [SPE_CRM_FKREL] = quotename([EKPO].[SPE_CRM_FKREL], char(34)),
	 [SPE_CHNG_SYS] = quotename([EKPO].[SPE_CHNG_SYS], char(34)),
	 [SPE_INSMK_SRC] = quotename([EKPO].[SPE_INSMK_SRC], char(34)),
	 [SPE_CQ_CTRLTYPE] = quotename([EKPO].[SPE_CQ_CTRLTYPE], char(34)),
	 [SPE_CQ_NOCQ] = quotename([EKPO].[SPE_CQ_NOCQ], char(34)),
	 [REASON_CODE] = quotename([EKPO].[REASON_CODE], char(34)),
	 [CQU_SAR] = quotename([EKPO].[CQU_SAR], char(34)),
	 [ANZSN] = quotename([EKPO].[ANZSN], char(34)),
	 [SPE_EWM_DTC] = quotename([EKPO].[SPE_EWM_DTC], char(34)),
	 [EXLIN] = quotename([EKPO].[EXLIN], char(34)),
	 [EXSNR] = quotename([EKPO].[EXSNR], char(34)),
	 [EHTYP] = quotename([EKPO].[EHTYP], char(34)),
	 [RETPC] = quotename([EKPO].[RETPC], char(34)),
	 [DPTYP] = quotename([EKPO].[DPTYP], char(34)),
	 [DPPCT] = quotename([EKPO].[DPPCT], char(34)),
	 [DPAMT] = quotename([EKPO].[DPAMT], char(34)),
	 [DPDAT] = convert(varchar(50), [EKPO].[DPDAT], 21),
	 [FLS_RSTO] = quotename([EKPO].[FLS_RSTO], char(34)),
	 [EXT_RFX_NUMBER] = quotename([EKPO].[EXT_RFX_NUMBER], char(34)),
	 [EXT_RFX_ITEM] = quotename([EKPO].[EXT_RFX_ITEM], char(34)),
	 [EXT_RFX_SYSTEM] = quotename([EKPO].[EXT_RFX_SYSTEM], char(34)),
	 [SRM_CONTRACT_ID] = quotename([EKPO].[SRM_CONTRACT_ID], char(34)),
	 [SRM_CONTRACT_ITM] = quotename([EKPO].[SRM_CONTRACT_ITM], char(34)),
	 [BLK_REASON_ID] = quotename([EKPO].[BLK_REASON_ID], char(34)),
	 [BLK_REASON_TXT] = quotename([EKPO].[BLK_REASON_TXT], char(34)),
	 [ITCONS] = quotename([EKPO].[ITCONS], char(34)),
	 [FIXMG] = quotename([EKPO].[FIXMG], char(34)),
	 [WABWE] = quotename([EKPO].[WABWE], char(34)),
	 [TC_AUT_DET] = quotename([EKPO].[TC_AUT_DET], char(34)),
	 [MANUAL_TC_REASON] = quotename([EKPO].[MANUAL_TC_REASON], char(34)),
	 [FISCAL_INCENTIVE] = quotename([EKPO].[FISCAL_INCENTIVE], char(34)),
	 [TAX_SUBJECT_ST] = quotename([EKPO].[TAX_SUBJECT_ST], char(34)),
	 [FISCAL_INCENTIVE_ID] = quotename([EKPO].[FISCAL_INCENTIVE_ID], char(34)),
	 [/BEV1/NEGEN_ITEM] = quotename([EKPO].[/BEV1/NEGEN_ITEM], char(34)),
	 [/BEV1/NEDEPFREE] = quotename([EKPO].[/BEV1/NEDEPFREE], char(34)),
	 [/BEV1/NESTRUCCAT] = quotename([EKPO].[/BEV1/NESTRUCCAT], char(34)),
	 [ADVCODE] = quotename([EKPO].[ADVCODE], char(34)),
	 [BUDGET_PD] = quotename([EKPO].[BUDGET_PD], char(34)),
	 [EXCPE] = quotename([EKPO].[EXCPE], char(34)),
	 [IUID_RELEVANT] = quotename([EKPO].[IUID_RELEVANT], char(34)),
	 [MRPIND] = quotename([EKPO].[MRPIND], char(34)),
	 [REFSITE] = quotename([EKPO].[REFSITE], char(34)),
	 [SERRU] = quotename([EKPO].[SERRU], char(34)),
	 [SERNP] = quotename([EKPO].[SERNP], char(34)),
	 [DISUB_SOBKZ] = quotename([EKPO].[DISUB_SOBKZ], char(34)),
	 [DISUB_PSPNR] = quotename([EKPO].[DISUB_PSPNR], char(34)),
	 [DISUB_KUNNR] = quotename([EKPO].[DISUB_KUNNR], char(34)),
	 [DISUB_VBELN] = quotename([EKPO].[DISUB_VBELN], char(34)),
	 [DISUB_POSNR] = quotename([EKPO].[DISUB_POSNR], char(34)),
	 [DISUB_OWNER] = quotename([EKPO].[DISUB_OWNER], char(34)),
	 [REF_ITEM] = quotename([EKPO].[REF_ITEM], char(34)),
	 [SOURCE_ID] = quotename([EKPO].[SOURCE_ID], char(34)),
	 [SOURCE_KEY] = quotename([EKPO].[SOURCE_KEY], char(34)),
	 [PUT_BACK] = quotename([EKPO].[PUT_BACK], char(34)),
	 [POL_ID] = quotename([EKPO].[POL_ID], char(34)),
	 [CONS_ORDER] = quotename([EKPO].[CONS_ORDER], char(34)),
	 [ETL_DATA_SOURCE] = quotename([EKPO].[ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename([EKPO].[ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = convert(varchar(50), [EKPO].[ETL_LOAD_DATE], 21)
from SAP_Production.dbo.EKPO