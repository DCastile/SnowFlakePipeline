select
	 [MANDT] = isNull(quotename([MANDT], char(34)), '\N'),
	 [EBELN] = isNull(quotename([EBELN], char(34)), '\N'),
	 [EBELP] = isNull(quotename([EBELP], char(34)), '\N'),
	 [LOEKZ] = isNull(quotename([LOEKZ], char(34)), '\N'),
	 [STATU] = isNull(quotename([STATU], char(34)), '\N'),
	 [AEDAT] = isNull(convert(varchar(50), [AEDAT], 21), '\N'),
	 [TXZ01] = isNull(quotename([TXZ01], char(34)), '\N'),
	 [MATNR] = isNull(quotename([MATNR], char(34)), '\N'),
	 [EMATN] = isNull(quotename([EMATN], char(34)), '\N'),
	 [BUKRS] = isNull(quotename([BUKRS], char(34)), '\N'),
	 [WERKS] = isNull(quotename([WERKS], char(34)), '\N'),
	 [LGORT] = isNull(quotename([LGORT], char(34)), '\N'),
	 [BEDNR] = isNull(quotename([BEDNR], char(34)), '\N'),
	 [MATKL] = isNull(quotename([MATKL], char(34)), '\N'),
	 [INFNR] = isNull(quotename([INFNR], char(34)), '\N'),
	 [IDNLF] = isNull(quotename([IDNLF], char(34)), '\N'),
	 [KTMNG] = isNull(quotename([KTMNG], char(34)), '\N'),
	 [MENGE] = isNull(quotename([MENGE], char(34)), '\N'),
	 [MEINS] = isNull(quotename([MEINS], char(34)), '\N'),
	 [BPRME] = isNull(quotename([BPRME], char(34)), '\N'),
	 [BPUMZ] = isNull(quotename([BPUMZ], char(34)), '\N'),
	 [BPUMN] = isNull(quotename([BPUMN], char(34)), '\N'),
	 [UMREZ] = isNull(quotename([UMREZ], char(34)), '\N'),
	 [UMREN] = isNull(quotename([UMREN], char(34)), '\N'),
	 [NETPR] = isNull(quotename([NETPR], char(34)), '\N'),
	 [PEINH] = isNull(quotename([PEINH], char(34)), '\N'),
	 [NETWR] = isNull(quotename([NETWR], char(34)), '\N'),
	 [BRTWR] = isNull(quotename([BRTWR], char(34)), '\N'),
	 [AGDAT] = isNull(convert(varchar(50), [AGDAT], 21), '\N'),
	 [WEBAZ] = isNull(quotename([WEBAZ], char(34)), '\N'),
	 [MWSKZ] = isNull(quotename([MWSKZ], char(34)), '\N'),
	 [BONUS] = isNull(quotename([BONUS], char(34)), '\N'),
	 [INSMK] = isNull(quotename([INSMK], char(34)), '\N'),
	 [SPINF] = isNull(quotename([SPINF], char(34)), '\N'),
	 [PRSDR] = isNull(quotename([PRSDR], char(34)), '\N'),
	 [SCHPR] = isNull(quotename([SCHPR], char(34)), '\N'),
	 [MAHNZ] = isNull(quotename([MAHNZ], char(34)), '\N'),
	 [MAHN1] = isNull(quotename([MAHN1], char(34)), '\N'),
	 [MAHN2] = isNull(quotename([MAHN2], char(34)), '\N'),
	 [MAHN3] = isNull(quotename([MAHN3], char(34)), '\N'),
	 [UEBTO] = isNull(quotename([UEBTO], char(34)), '\N'),
	 [UEBTK] = isNull(quotename([UEBTK], char(34)), '\N'),
	 [UNTTO] = isNull(quotename([UNTTO], char(34)), '\N'),
	 [BWTAR] = isNull(quotename([BWTAR], char(34)), '\N'),
	 [BWTTY] = isNull(quotename([BWTTY], char(34)), '\N'),
	 [ABSKZ] = isNull(quotename([ABSKZ], char(34)), '\N'),
	 [AGMEM] = isNull(quotename([AGMEM], char(34)), '\N'),
	 [ELIKZ] = isNull(quotename([ELIKZ], char(34)), '\N'),
	 [EREKZ] = isNull(quotename([EREKZ], char(34)), '\N'),
	 [PSTYP] = isNull(quotename([PSTYP], char(34)), '\N'),
	 [KNTTP] = isNull(quotename([KNTTP], char(34)), '\N'),
	 [KZVBR] = isNull(quotename([KZVBR], char(34)), '\N'),
	 [VRTKZ] = isNull(quotename([VRTKZ], char(34)), '\N'),
	 [TWRKZ] = isNull(quotename([TWRKZ], char(34)), '\N'),
	 [WEPOS] = isNull(quotename([WEPOS], char(34)), '\N'),
	 [WEUNB] = isNull(quotename([WEUNB], char(34)), '\N'),
	 [REPOS] = isNull(quotename([REPOS], char(34)), '\N'),
	 [WEBRE] = isNull(quotename([WEBRE], char(34)), '\N'),
	 [KZABS] = isNull(quotename([KZABS], char(34)), '\N'),
	 [LABNR] = isNull(quotename([LABNR], char(34)), '\N'),
	 [KONNR] = isNull(quotename([KONNR], char(34)), '\N'),
	 [KTPNR] = isNull(quotename([KTPNR], char(34)), '\N'),
	 [ABDAT] = isNull(convert(varchar(50), [ABDAT], 21), '\N'),
	 [ABFTZ] = isNull(quotename([ABFTZ], char(34)), '\N'),
	 [ETFZ1] = isNull(quotename([ETFZ1], char(34)), '\N'),
	 [ETFZ2] = isNull(quotename([ETFZ2], char(34)), '\N'),
	 [KZSTU] = isNull(quotename([KZSTU], char(34)), '\N'),
	 [NOTKZ] = isNull(quotename([NOTKZ], char(34)), '\N'),
	 [LMEIN] = isNull(quotename([LMEIN], char(34)), '\N'),
	 [EVERS] = isNull(quotename([EVERS], char(34)), '\N'),
	 [ZWERT] = isNull(quotename([ZWERT], char(34)), '\N'),
	 [NAVNW] = isNull(quotename([NAVNW], char(34)), '\N'),
	 [ABMNG] = isNull(quotename([ABMNG], char(34)), '\N'),
	 [PRDAT] = isNull(convert(varchar(50), [PRDAT], 21), '\N'),
	 [BSTYP] = isNull(quotename([BSTYP], char(34)), '\N'),
	 [EFFWR] = isNull(quotename([EFFWR], char(34)), '\N'),
	 [XOBLR] = isNull(quotename([XOBLR], char(34)), '\N'),
	 [KUNNR] = isNull(quotename([KUNNR], char(34)), '\N'),
	 [ADRNR] = isNull(quotename([ADRNR], char(34)), '\N'),
	 [EKKOL] = isNull(quotename([EKKOL], char(34)), '\N'),
	 [SKTOF] = isNull(quotename([SKTOF], char(34)), '\N'),
	 [STAFO] = isNull(quotename([STAFO], char(34)), '\N'),
	 [PLIFZ] = isNull(quotename([PLIFZ], char(34)), '\N'),
	 [NTGEW] = isNull(quotename([NTGEW], char(34)), '\N'),
	 [GEWEI] = isNull(quotename([GEWEI], char(34)), '\N'),
	 [TXJCD] = isNull(quotename([TXJCD], char(34)), '\N'),
	 [ETDRK] = isNull(quotename([ETDRK], char(34)), '\N'),
	 [SOBKZ] = isNull(quotename([SOBKZ], char(34)), '\N'),
	 [ARSNR] = isNull(quotename([ARSNR], char(34)), '\N'),
	 [ARSPS] = isNull(quotename([ARSPS], char(34)), '\N'),
	 [INSNC] = isNull(quotename([INSNC], char(34)), '\N'),
	 [SSQSS] = isNull(quotename([SSQSS], char(34)), '\N'),
	 [ZGTYP] = isNull(quotename([ZGTYP], char(34)), '\N'),
	 [EAN11] = isNull(quotename([EAN11], char(34)), '\N'),
	 [BSTAE] = isNull(quotename([BSTAE], char(34)), '\N'),
	 [REVLV] = isNull(quotename([REVLV], char(34)), '\N'),
	 [GEBER] = isNull(quotename([GEBER], char(34)), '\N'),
	 [FISTL] = isNull(quotename([FISTL], char(34)), '\N'),
	 [FIPOS] = isNull(quotename([FIPOS], char(34)), '\N'),
	 [KO_GSBER] = isNull(quotename([KO_GSBER], char(34)), '\N'),
	 [KO_PARGB] = isNull(quotename([KO_PARGB], char(34)), '\N'),
	 [KO_PRCTR] = isNull(quotename([KO_PRCTR], char(34)), '\N'),
	 [KO_PPRCTR] = isNull(quotename([KO_PPRCTR], char(34)), '\N'),
	 [MEPRF] = isNull(quotename([MEPRF], char(34)), '\N'),
	 [BRGEW] = isNull(quotename([BRGEW], char(34)), '\N'),
	 [VOLUM] = isNull(quotename([VOLUM], char(34)), '\N'),
	 [VOLEH] = isNull(quotename([VOLEH], char(34)), '\N'),
	 [INCO1] = isNull(quotename([INCO1], char(34)), '\N'),
	 [INCO2] = isNull(quotename([INCO2], char(34)), '\N'),
	 [VORAB] = isNull(quotename([VORAB], char(34)), '\N'),
	 [KOLIF] = isNull(quotename([KOLIF], char(34)), '\N'),
	 [LTSNR] = isNull(quotename([LTSNR], char(34)), '\N'),
	 [PACKNO] = isNull(quotename([PACKNO], char(34)), '\N'),
	 [FPLNR] = isNull(quotename([FPLNR], char(34)), '\N'),
	 [GNETWR] = isNull(quotename([GNETWR], char(34)), '\N'),
	 [STAPO] = isNull(quotename([STAPO], char(34)), '\N'),
	 [UEBPO] = isNull(quotename([UEBPO], char(34)), '\N'),
	 [LEWED] = isNull(convert(varchar(50), [LEWED], 21), '\N'),
	 [EMLIF] = isNull(quotename([EMLIF], char(34)), '\N'),
	 [LBLKZ] = isNull(quotename([LBLKZ], char(34)), '\N'),
	 [SATNR] = isNull(quotename([SATNR], char(34)), '\N'),
	 [ATTYP] = isNull(quotename([ATTYP], char(34)), '\N'),
	 [VSART] = isNull(quotename([VSART], char(34)), '\N'),
	 [HANDOVERLOC] = isNull(quotename([HANDOVERLOC], char(34)), '\N'),
	 [KANBA] = isNull(quotename([KANBA], char(34)), '\N'),
	 [ADRN2] = isNull(quotename([ADRN2], char(34)), '\N'),
	 [CUOBJ] = isNull(quotename([CUOBJ], char(34)), '\N'),
	 [XERSY] = isNull(quotename([XERSY], char(34)), '\N'),
	 [EILDT] = isNull(convert(varchar(50), [EILDT], 21), '\N'),
	 [DRDAT] = isNull(convert(varchar(50), [DRDAT], 21), '\N'),
	 [DRUHR] = isNull(quotename([DRUHR], char(34)), '\N'),
	 [DRUNR] = isNull(quotename([DRUNR], char(34)), '\N'),
	 [AKTNR] = isNull(quotename([AKTNR], char(34)), '\N'),
	 [ABELN] = isNull(quotename([ABELN], char(34)), '\N'),
	 [ABELP] = isNull(quotename([ABELP], char(34)), '\N'),
	 [ANZPU] = isNull(quotename([ANZPU], char(34)), '\N'),
	 [PUNEI] = isNull(quotename([PUNEI], char(34)), '\N'),
	 [SAISO] = isNull(quotename([SAISO], char(34)), '\N'),
	 [SAISJ] = isNull(quotename([SAISJ], char(34)), '\N'),
	 [EBON2] = isNull(quotename([EBON2], char(34)), '\N'),
	 [EBON3] = isNull(quotename([EBON3], char(34)), '\N'),
	 [EBONF] = isNull(quotename([EBONF], char(34)), '\N'),
	 [MLMAA] = isNull(quotename([MLMAA], char(34)), '\N'),
	 [MHDRZ] = isNull(quotename([MHDRZ], char(34)), '\N'),
	 [ANFNR] = isNull(quotename([ANFNR], char(34)), '\N'),
	 [ANFPS] = isNull(quotename([ANFPS], char(34)), '\N'),
	 [KZKFG] = isNull(quotename([KZKFG], char(34)), '\N'),
	 [USEQU] = isNull(quotename([USEQU], char(34)), '\N'),
	 [UMSOK] = isNull(quotename([UMSOK], char(34)), '\N'),
	 [BANFN] = isNull(quotename([BANFN], char(34)), '\N'),
	 [BNFPO] = isNull(quotename([BNFPO], char(34)), '\N'),
	 [MTART] = isNull(quotename([MTART], char(34)), '\N'),
	 [UPTYP] = isNull(quotename([UPTYP], char(34)), '\N'),
	 [UPVOR] = isNull(quotename([UPVOR], char(34)), '\N'),
	 [KZWI1] = isNull(quotename([KZWI1], char(34)), '\N'),
	 [KZWI2] = isNull(quotename([KZWI2], char(34)), '\N'),
	 [KZWI3] = isNull(quotename([KZWI3], char(34)), '\N'),
	 [KZWI4] = isNull(quotename([KZWI4], char(34)), '\N'),
	 [KZWI5] = isNull(quotename([KZWI5], char(34)), '\N'),
	 [KZWI6] = isNull(quotename([KZWI6], char(34)), '\N'),
	 [SIKGR] = isNull(quotename([SIKGR], char(34)), '\N'),
	 [MFZHI] = isNull(quotename([MFZHI], char(34)), '\N'),
	 [FFZHI] = isNull(quotename([FFZHI], char(34)), '\N'),
	 [RETPO] = isNull(quotename([RETPO], char(34)), '\N'),
	 [AUREL] = isNull(quotename([AUREL], char(34)), '\N'),
	 [BSGRU] = isNull(quotename([BSGRU], char(34)), '\N'),
	 [LFRET] = isNull(quotename([LFRET], char(34)), '\N'),
	 [MFRGR] = isNull(quotename([MFRGR], char(34)), '\N'),
	 [NRFHG] = isNull(quotename([NRFHG], char(34)), '\N'),
	 [J_1BNBM] = isNull(quotename([J_1BNBM], char(34)), '\N'),
	 [J_1BMATUSE] = isNull(quotename([J_1BMATUSE], char(34)), '\N'),
	 [J_1BMATORG] = isNull(quotename([J_1BMATORG], char(34)), '\N'),
	 [J_1BOWNPRO] = isNull(quotename([J_1BOWNPRO], char(34)), '\N'),
	 [J_1BINDUST] = isNull(quotename([J_1BINDUST], char(34)), '\N'),
	 [ABUEB] = isNull(quotename([ABUEB], char(34)), '\N'),
	 [NLABD] = isNull(convert(varchar(50), [NLABD], 21), '\N'),
	 [NFABD] = isNull(convert(varchar(50), [NFABD], 21), '\N'),
	 [KZBWS] = isNull(quotename([KZBWS], char(34)), '\N'),
	 [BONBA] = isNull(quotename([BONBA], char(34)), '\N'),
	 [FABKZ] = isNull(quotename([FABKZ], char(34)), '\N'),
	 [J_1AINDXP] = isNull(quotename([J_1AINDXP], char(34)), '\N'),
	 [J_1AIDATEP] = isNull(convert(varchar(50), [J_1AIDATEP], 21), '\N'),
	 [MPROF] = isNull(quotename([MPROF], char(34)), '\N'),
	 [EGLKZ] = isNull(quotename([EGLKZ], char(34)), '\N'),
	 [KZTLF] = isNull(quotename([KZTLF], char(34)), '\N'),
	 [KZFME] = isNull(quotename([KZFME], char(34)), '\N'),
	 [RDPRF] = isNull(quotename([RDPRF], char(34)), '\N'),
	 [TECHS] = isNull(quotename([TECHS], char(34)), '\N'),
	 [CHG_SRV] = isNull(quotename([CHG_SRV], char(34)), '\N'),
	 [CHG_FPLNR] = isNull(quotename([CHG_FPLNR], char(34)), '\N'),
	 [MFRPN] = isNull(quotename([MFRPN], char(34)), '\N'),
	 [MFRNR] = isNull(quotename([MFRNR], char(34)), '\N'),
	 [EMNFR] = isNull(quotename([EMNFR], char(34)), '\N'),
	 [NOVET] = isNull(quotename([NOVET], char(34)), '\N'),
	 [AFNAM] = isNull(quotename([AFNAM], char(34)), '\N'),
	 [TZONRC] = isNull(quotename([TZONRC], char(34)), '\N'),
	 [IPRKZ] = isNull(quotename([IPRKZ], char(34)), '\N'),
	 [LEBRE] = isNull(quotename([LEBRE], char(34)), '\N'),
	 [BERID] = isNull(quotename([BERID], char(34)), '\N'),
	 [XCONDITIONS] = isNull(quotename([XCONDITIONS], char(34)), '\N'),
	 [APOMS] = isNull(quotename([APOMS], char(34)), '\N'),
	 [CCOMP] = isNull(quotename([CCOMP], char(34)), '\N'),
	 [GRANT_NBR] = isNull(quotename([GRANT_NBR], char(34)), '\N'),
	 [FKBER] = isNull(quotename([FKBER], char(34)), '\N'),
	 [STATUS] = isNull(quotename([STATUS], char(34)), '\N'),
	 [RESLO] = isNull(quotename([RESLO], char(34)), '\N'),
	 [KBLNR] = isNull(quotename([KBLNR], char(34)), '\N'),
	 [KBLPOS] = isNull(quotename([KBLPOS], char(34)), '\N'),
	 [WEORA] = isNull(quotename([WEORA], char(34)), '\N'),
	 [SRV_BAS_COM] = isNull(quotename([SRV_BAS_COM], char(34)), '\N'),
	 [PRIO_URG] = isNull(quotename([PRIO_URG], char(34)), '\N'),
	 [PRIO_REQ] = isNull(quotename([PRIO_REQ], char(34)), '\N'),
	 [EMPST] = isNull(quotename([EMPST], char(34)), '\N'),
	 [DIFF_INVOICE] = isNull(quotename([DIFF_INVOICE], char(34)), '\N'),
	 [TRMRISK_RELEVANT] = isNull(quotename([TRMRISK_RELEVANT], char(34)), '\N'),
	 [SPE_ABGRU] = isNull(quotename([SPE_ABGRU], char(34)), '\N'),
	 [SPE_CRM_SO] = isNull(quotename([SPE_CRM_SO], char(34)), '\N'),
	 [SPE_CRM_SO_ITEM] = isNull(quotename([SPE_CRM_SO_ITEM], char(34)), '\N'),
	 [SPE_CRM_REF_SO] = isNull(quotename([SPE_CRM_REF_SO], char(34)), '\N'),
	 [SPE_CRM_REF_ITEM] = isNull(quotename([SPE_CRM_REF_ITEM], char(34)), '\N'),
	 [SPE_CRM_FKREL] = isNull(quotename([SPE_CRM_FKREL], char(34)), '\N'),
	 [SPE_CHNG_SYS] = isNull(quotename([SPE_CHNG_SYS], char(34)), '\N'),
	 [SPE_INSMK_SRC] = isNull(quotename([SPE_INSMK_SRC], char(34)), '\N'),
	 [SPE_CQ_CTRLTYPE] = isNull(quotename([SPE_CQ_CTRLTYPE], char(34)), '\N'),
	 [SPE_CQ_NOCQ] = isNull(quotename([SPE_CQ_NOCQ], char(34)), '\N'),
	 [REASON_CODE] = isNull(quotename([REASON_CODE], char(34)), '\N'),
	 [CQU_SAR] = isNull(quotename([CQU_SAR], char(34)), '\N'),
	 [ANZSN] = isNull(quotename([ANZSN], char(34)), '\N'),
	 [SPE_EWM_DTC] = isNull(quotename([SPE_EWM_DTC], char(34)), '\N'),
	 [EXLIN] = isNull(quotename([EXLIN], char(34)), '\N'),
	 [EXSNR] = isNull(quotename([EXSNR], char(34)), '\N'),
	 [EHTYP] = isNull(quotename([EHTYP], char(34)), '\N'),
	 [RETPC] = isNull(quotename([RETPC], char(34)), '\N'),
	 [DPTYP] = isNull(quotename([DPTYP], char(34)), '\N'),
	 [DPPCT] = isNull(quotename([DPPCT], char(34)), '\N'),
	 [DPAMT] = isNull(quotename([DPAMT], char(34)), '\N'),
	 [DPDAT] = isNull(convert(varchar(50), [DPDAT], 21), '\N'),
	 [FLS_RSTO] = isNull(quotename([FLS_RSTO], char(34)), '\N'),
	 [EXT_RFX_NUMBER] = isNull(quotename([EXT_RFX_NUMBER], char(34)), '\N'),
	 [EXT_RFX_ITEM] = isNull(quotename([EXT_RFX_ITEM], char(34)), '\N'),
	 [EXT_RFX_SYSTEM] = isNull(quotename([EXT_RFX_SYSTEM], char(34)), '\N'),
	 [SRM_CONTRACT_ID] = isNull(quotename([SRM_CONTRACT_ID], char(34)), '\N'),
	 [SRM_CONTRACT_ITM] = isNull(quotename([SRM_CONTRACT_ITM], char(34)), '\N'),
	 [BLK_REASON_ID] = isNull(quotename([BLK_REASON_ID], char(34)), '\N'),
	 [BLK_REASON_TXT] = isNull(quotename([BLK_REASON_TXT], char(34)), '\N'),
	 [ITCONS] = isNull(quotename([ITCONS], char(34)), '\N'),
	 [FIXMG] = isNull(quotename([FIXMG], char(34)), '\N'),
	 [WABWE] = isNull(quotename([WABWE], char(34)), '\N'),
	 [TC_AUT_DET] = isNull(quotename([TC_AUT_DET], char(34)), '\N'),
	 [MANUAL_TC_REASON] = isNull(quotename([MANUAL_TC_REASON], char(34)), '\N'),
	 [FISCAL_INCENTIVE] = isNull(quotename([FISCAL_INCENTIVE], char(34)), '\N'),
	 [TAX_SUBJECT_ST] = isNull(quotename([TAX_SUBJECT_ST], char(34)), '\N'),
	 [FISCAL_INCENTIVE_ID] = isNull(quotename([FISCAL_INCENTIVE_ID], char(34)), '\N'),
	 [/BEV1/NEGEN_ITEM] = isNull(quotename([/BEV1/NEGEN_ITEM], char(34)), '\N'),
	 [/BEV1/NEDEPFREE] = isNull(quotename([/BEV1/NEDEPFREE], char(34)), '\N'),
	 [/BEV1/NESTRUCCAT] = isNull(quotename([/BEV1/NESTRUCCAT], char(34)), '\N'),
	 [ADVCODE] = isNull(quotename([ADVCODE], char(34)), '\N'),
	 [BUDGET_PD] = isNull(quotename([BUDGET_PD], char(34)), '\N'),
	 [EXCPE] = isNull(quotename([EXCPE], char(34)), '\N'),
	 [IUID_RELEVANT] = isNull(quotename([IUID_RELEVANT], char(34)), '\N'),
	 [MRPIND] = isNull(quotename([MRPIND], char(34)), '\N'),
	 [REFSITE] = isNull(quotename([REFSITE], char(34)), '\N'),
	 [SERRU] = isNull(quotename([SERRU], char(34)), '\N'),
	 [SERNP] = isNull(quotename([SERNP], char(34)), '\N'),
	 [DISUB_SOBKZ] = isNull(quotename([DISUB_SOBKZ], char(34)), '\N'),
	 [DISUB_PSPNR] = isNull(quotename([DISUB_PSPNR], char(34)), '\N'),
	 [DISUB_KUNNR] = isNull(quotename([DISUB_KUNNR], char(34)), '\N'),
	 [DISUB_VBELN] = isNull(quotename([DISUB_VBELN], char(34)), '\N'),
	 [DISUB_POSNR] = isNull(quotename([DISUB_POSNR], char(34)), '\N'),
	 [DISUB_OWNER] = isNull(quotename([DISUB_OWNER], char(34)), '\N'),
	 [REF_ITEM] = isNull(quotename([REF_ITEM], char(34)), '\N'),
	 [SOURCE_ID] = isNull(quotename([SOURCE_ID], char(34)), '\N'),
	 [SOURCE_KEY] = isNull(quotename([SOURCE_KEY], char(34)), '\N'),
	 [PUT_BACK] = isNull(quotename([PUT_BACK], char(34)), '\N'),
	 [POL_ID] = isNull(quotename([POL_ID], char(34)), '\N'),
	 [CONS_ORDER] = isNull(quotename([CONS_ORDER], char(34)), '\N'),
	 [ETL_DATA_SOURCE] = isNull(quotename([ETL_DATA_SOURCE], char(34)), '\N'),
	 [ETL_PROCESS_ID] = isNull(quotename([ETL_PROCESS_ID], char(34)), '\N'),
	 [ETL_LOAD_DATE] = isNull(convert(varchar(50), [ETL_LOAD_DATE], 21), '\N')
from SAP_Production.dbo.EKPO