select
	 [MANDT] = quotename([MANDT], char(34)),
	 [VBELN] = quotename([VBELN], char(34)),
	 [POSNR] = quotename([POSNR], char(34)),
	 [PSTYV] = quotename([PSTYV], char(34)),
	 [ERNAM] = quotename([ERNAM], char(34)),
	 [ERZET] = quotename([ERZET], char(34)),
	 [ERDAT] = convert(varchar(50), [ERDAT], 21),
	 [MATNR] = quotename([MATNR], char(34)),
	 [MATWA] = quotename([MATWA], char(34)),
	 [MATKL] = quotename([MATKL], char(34)),
	 [WERKS] = quotename([WERKS], char(34)),
	 [LGORT] = quotename([LGORT], char(34)),
	 [CHARG] = quotename([CHARG], char(34)),
	 [LICHN] = quotename([LICHN], char(34)),
	 [KDMAT] = quotename([KDMAT], char(34)),
	 [PRODH] = quotename([PRODH], char(34)),
	 [LFIMG] = quotename([LFIMG], char(34)),
	 [MEINS] = quotename([MEINS], char(34)),
	 [VRKME] = quotename([VRKME], char(34)),
	 [UMVKZ] = quotename([UMVKZ], char(34)),
	 [UMVKN] = quotename([UMVKN], char(34)),
	 [NTGEW] = quotename([NTGEW], char(34)),
	 [BRGEW] = quotename([BRGEW], char(34)),
	 [GEWEI] = quotename([GEWEI], char(34)),
	 [VOLUM] = quotename([VOLUM], char(34)),
	 [VOLEH] = quotename([VOLEH], char(34)),
	 [KZTLF] = quotename([KZTLF], char(34)),
	 [UEBTK] = quotename([UEBTK], char(34)),
	 [UEBTO] = quotename([UEBTO], char(34)),
	 [UNTTO] = quotename([UNTTO], char(34)),
	 [CHSPL] = quotename([CHSPL], char(34)),
	 [FAKSP] = quotename([FAKSP], char(34)),
	 [MBDAT] = convert(varchar(50), [MBDAT], 21),
	 [LGMNG] = quotename([LGMNG], char(34)),
	 [ARKTX] = quotename([ARKTX], char(34)),
	 [LGPBE] = quotename([LGPBE], char(34)),
	 [VBELV] = quotename([VBELV], char(34)),
	 [POSNV] = quotename([POSNV], char(34)),
	 [VBTYV] = quotename([VBTYV], char(34)),
	 [VGSYS] = quotename([VGSYS], char(34)),
	 [VGBEL] = quotename([VGBEL], char(34)),
	 [VGPOS] = quotename([VGPOS], char(34)),
	 [UPFLU] = quotename([UPFLU], char(34)),
	 [UEPOS] = quotename([UEPOS], char(34)),
	 [FKREL] = quotename([FKREL], char(34)),
	 [LADGR] = quotename([LADGR], char(34)),
	 [TRAGR] = quotename([TRAGR], char(34)),
	 [KOMKZ] = quotename([KOMKZ], char(34)),
	 [LGNUM] = quotename([LGNUM], char(34)),
	 [LISPL] = quotename([LISPL], char(34)),
	 [LGTYP] = quotename([LGTYP], char(34)),
	 [LGPLA] = quotename([LGPLA], char(34)),
	 [BWTEX] = quotename([BWTEX], char(34)),
	 [BWART] = quotename([BWART], char(34)),
	 [BWLVS] = quotename([BWLVS], char(34)),
	 [KZDLG] = quotename([KZDLG], char(34)),
	 [BDART] = quotename([BDART], char(34)),
	 [PLART] = quotename([PLART], char(34)),
	 [MTART] = quotename([MTART], char(34)),
	 [XCHPF] = quotename([XCHPF], char(34)),
	 [XCHAR] = quotename([XCHAR], char(34)),
	 [VGREF] = quotename([VGREF], char(34)),
	 [POSAR] = quotename([POSAR], char(34)),
	 [BWTAR] = quotename([BWTAR], char(34)),
	 [SUMBD] = quotename([SUMBD], char(34)),
	 [MTVFP] = quotename([MTVFP], char(34)),
	 [EANNR] = quotename([EANNR], char(34)),
	 [GSBER] = quotename([GSBER], char(34)),
	 [VKBUR] = quotename([VKBUR], char(34)),
	 [VKGRP] = quotename([VKGRP], char(34)),
	 [VTWEG] = quotename([VTWEG], char(34)),
	 [SPART] = quotename([SPART], char(34)),
	 [GRKOR] = quotename([GRKOR], char(34)),
	 [FMENG] = quotename([FMENG], char(34)),
	 [ANTLF] = quotename([ANTLF], char(34)),
	 [VBEAF] = quotename([VBEAF], char(34)),
	 [VBEAV] = quotename([VBEAV], char(34)),
	 [STAFO] = quotename([STAFO], char(34)),
	 [WAVWR] = quotename([WAVWR], char(34)),
	 [KZWI1] = quotename([KZWI1], char(34)),
	 [KZWI2] = quotename([KZWI2], char(34)),
	 [KZWI3] = quotename([KZWI3], char(34)),
	 [KZWI4] = quotename([KZWI4], char(34)),
	 [KZWI5] = quotename([KZWI5], char(34)),
	 [KZWI6] = quotename([KZWI6], char(34)),
	 [SOBKZ] = quotename([SOBKZ], char(34)),
	 [AEDAT] = convert(varchar(50), [AEDAT], 21),
	 [EAN11] = quotename([EAN11], char(34)),
	 [KVGR1] = quotename([KVGR1], char(34)),
	 [KVGR2] = quotename([KVGR2], char(34)),
	 [KVGR3] = quotename([KVGR3], char(34)),
	 [KVGR4] = quotename([KVGR4], char(34)),
	 [KVGR5] = quotename([KVGR5], char(34)),
	 [MVGR1] = quotename([MVGR1], char(34)),
	 [MVGR2] = quotename([MVGR2], char(34)),
	 [MVGR3] = quotename([MVGR3], char(34)),
	 [MVGR4] = quotename([MVGR4], char(34)),
	 [MVGR5] = quotename([MVGR5], char(34)),
	 [VPZUO] = quotename([VPZUO], char(34)),
	 [VGTYP] = quotename([VGTYP], char(34)),
	 [RFVGTYP] = quotename([RFVGTYP], char(34)),
	 [KOSTL] = quotename([KOSTL], char(34)),
	 [KOKRS] = quotename([KOKRS], char(34)),
	 [PAOBJNR] = quotename([PAOBJNR], char(34)),
	 [PRCTR] = quotename([PRCTR], char(34)),
	 [PS_PSP_PNR] = quotename([PS_PSP_PNR], char(34)),
	 [AUFNR] = quotename([AUFNR], char(34)),
	 [POSNR_PP] = quotename([POSNR_PP], char(34)),
	 [KDAUF] = quotename([KDAUF], char(34)),
	 [KDPOS] = quotename([KDPOS], char(34)),
	 [VPMAT] = quotename([VPMAT], char(34)),
	 [VPWRK] = quotename([VPWRK], char(34)),
	 [PRBME] = quotename([PRBME], char(34)),
	 [UMREF] = quotename([UMREF], char(34)),
	 [KNTTP] = quotename([KNTTP], char(34)),
	 [KZVBR] = quotename([KZVBR], char(34)),
	 [FIPOS] = quotename([FIPOS], char(34)),
	 [FISTL] = quotename([FISTL], char(34)),
	 [GEBER] = quotename([GEBER], char(34)),
	 [PCKPF] = quotename([PCKPF], char(34)),
	 [BEDAR_LF] = quotename([BEDAR_LF], char(34)),
	 [CMPNT] = quotename([CMPNT], char(34)),
	 [KCMENG] = quotename([KCMENG], char(34)),
	 [KCBRGEW] = quotename([KCBRGEW], char(34)),
	 [KCNTGEW] = quotename([KCNTGEW], char(34)),
	 [KCVOLUM] = quotename([KCVOLUM], char(34)),
	 [UECHA] = quotename([UECHA], char(34)),
	 [CUOBJ] = quotename([CUOBJ], char(34)),
	 [CUOBJ_CH] = quotename([CUOBJ_CH], char(34)),
	 [ANZSN] = quotename([ANZSN], char(34)),
	 [SERAIL] = quotename([SERAIL], char(34)),
	 [KCGEWEI] = quotename([KCGEWEI], char(34)),
	 [KCVOLEH] = quotename([KCVOLEH], char(34)),
	 [SERNR] = quotename([SERNR], char(34)),
	 [ABRLI] = quotename([ABRLI], char(34)),
	 [ABART] = quotename([ABART], char(34)),
	 [ABRVW] = quotename([ABRVW], char(34)),
	 [QPLOS] = quotename([QPLOS], char(34)),
	 [QTLOS] = quotename([QTLOS], char(34)),
	 [NACHL] = quotename([NACHL], char(34)),
	 [MAGRV] = quotename([MAGRV], char(34)),
	 [OBJKO] = quotename([OBJKO], char(34)),
	 [OBJPO] = quotename([OBJPO], char(34)),
	 [AESKD] = quotename([AESKD], char(34)),
	 [SHKZG] = quotename([SHKZG], char(34)),
	 [PROSA] = quotename([PROSA], char(34)),
	 [UEPVW] = quotename([UEPVW], char(34)),
	 [EMPST] = quotename([EMPST], char(34)),
	 [ABTNR] = quotename([ABTNR], char(34)),
	 [KOQUI] = quotename([KOQUI], char(34)),
	 [STADAT] = convert(varchar(50), [STADAT], 21),
	 [AKTNR] = quotename([AKTNR], char(34)),
	 [KNUMH_CH] = quotename([KNUMH_CH], char(34)),
	 [PREFE] = quotename([PREFE], char(34)),
	 [EXART] = quotename([EXART], char(34)),
	 [CLINT] = quotename([CLINT], char(34)),
	 [CHMVS] = quotename([CHMVS], char(34)),
	 [ABELN] = quotename([ABELN], char(34)),
	 [ABELP] = quotename([ABELP], char(34)),
	 [LFIMG_FLO] = quotename([LFIMG_FLO], char(34)),
	 [LGMNG_FLO] = quotename([LGMNG_FLO], char(34)),
	 [KCMENG_FLO] = quotename([KCMENG_FLO], char(34)),
	 [KZUMW] = quotename([KZUMW], char(34)),
	 [KMPMG] = quotename([KMPMG], char(34)),
	 [AUREL] = quotename([AUREL], char(34)),
	 [KPEIN] = quotename([KPEIN], char(34)),
	 [KMEIN] = quotename([KMEIN], char(34)),
	 [NETPR] = quotename([NETPR], char(34)),
	 [NETWR] = quotename([NETWR], char(34)),
	 [KOWRR] = quotename([KOWRR], char(34)),
	 [KZBEW] = quotename([KZBEW], char(34)),
	 [MFRGR] = quotename([MFRGR], char(34)),
	 [CHHPV] = quotename([CHHPV], char(34)),
	 [ABFOR] = quotename([ABFOR], char(34)),
	 [ABGES] = quotename([ABGES], char(34)),
	 [MBUHR] = quotename([MBUHR], char(34)),
	 [WKTNR] = quotename([WKTNR], char(34)),
	 [WKTPS] = quotename([WKTPS], char(34)),
	 [J_1BCFOP] = quotename([J_1BCFOP], char(34)),
	 [J_1BTAXLW1] = quotename([J_1BTAXLW1], char(34)),
	 [J_1BTAXLW2] = quotename([J_1BTAXLW2], char(34)),
	 [J_1BTXSDC] = quotename([J_1BTXSDC], char(34)),
	 [SITUA] = quotename([SITUA], char(34)),
	 [RSNUM] = quotename([RSNUM], char(34)),
	 [RSPOS] = quotename([RSPOS], char(34)),
	 [RSART] = quotename([RSART], char(34)),
	 [KANNR] = quotename([KANNR], char(34)),
	 [KZFME] = quotename([KZFME], char(34)),
	 [PROFL] = quotename([PROFL], char(34)),
	 [KCMENGVME] = quotename([KCMENGVME], char(34)),
	 [KCMENGVMEF] = quotename([KCMENGVMEF], char(34)),
	 [KZBWS] = quotename([KZBWS], char(34)),
	 [PSPNR] = quotename([PSPNR], char(34)),
	 [EPRIO] = quotename([EPRIO], char(34)),
	 [RULES] = quotename([RULES], char(34)),
	 [KZBEF] = quotename([KZBEF], char(34)),
	 [MPROF] = quotename([MPROF], char(34)),
	 [EMATN] = quotename([EMATN], char(34)),
	 [LGBZO] = quotename([LGBZO], char(34)),
	 [HANDLE] = quotename([HANDLE], char(34)),
	 [VERURPOS] = quotename([VERURPOS], char(34)),
	 [LIFEXPOS] = quotename([LIFEXPOS], char(34)),
	 [NOATP] = quotename([NOATP], char(34)),
	 [NOPCK] = quotename([NOPCK], char(34)),
	 [RBLVS] = quotename([RBLVS], char(34)),
	 [BERID] = quotename([BERID], char(34)),
	 [BESTQ] = quotename([BESTQ], char(34)),
	 [UMBSQ] = quotename([UMBSQ], char(34)),
	 [UMMAT] = quotename([UMMAT], char(34)),
	 [UMWRK] = quotename([UMWRK], char(34)),
	 [UMLGO] = quotename([UMLGO], char(34)),
	 [UMCHA] = quotename([UMCHA], char(34)),
	 [UMBAR] = quotename([UMBAR], char(34)),
	 [UMSOK] = quotename([UMSOK], char(34)),
	 [SONUM] = quotename([SONUM], char(34)),
	 [USONU] = quotename([USONU], char(34)),
	 [AKKUR] = quotename([AKKUR], char(34)),
	 [AKMNG] = quotename([AKMNG], char(34)),
	 [VKGRU] = quotename([VKGRU], char(34)),
	 [SHKZG_UM] = quotename([SHKZG_UM], char(34)),
	 [INSMK] = quotename([INSMK], char(34)),
	 [KZECH] = quotename([KZECH], char(34)),
	 [FLGWM] = quotename([FLGWM], char(34)),
	 [BERKZ] = quotename([BERKZ], char(34)),
	 [HUPOS] = quotename([HUPOS], char(34)),
	 [NOWAB] = quotename([NOWAB], char(34)),
	 [KONTO] = quotename([KONTO], char(34)),
	 [KZEAR] = quotename([KZEAR], char(34)),
	 [HSDAT] = convert(varchar(50), [HSDAT], 21),
	 [VFDAT] = convert(varchar(50), [VFDAT], 21),
	 [LFGJA] = quotename([LFGJA], char(34)),
	 [LFBNR] = quotename([LFBNR], char(34)),
	 [LFPOS] = quotename([LFPOS], char(34)),
	 [GRUND] = quotename([GRUND], char(34)),
	 [FOBWA] = quotename([FOBWA], char(34)),
	 [DLVTP] = quotename([DLVTP], char(34)),
	 [EXBWR] = quotename([EXBWR], char(34)),
	 [BPMNG] = quotename([BPMNG], char(34)),
	 [EXVKW] = quotename([EXVKW], char(34)),
	 [CMPRE_FLT] = quotename([CMPRE_FLT], char(34)),
	 [KZPOD] = quotename([KZPOD], char(34)),
	 [LFDEZ] = quotename([LFDEZ], char(34)),
	 [UMREV] = quotename([UMREV], char(34)),
	 [PODREL] = quotename([PODREL], char(34)),
	 [KZUML] = quotename([KZUML], char(34)),
	 [FKBER] = quotename([FKBER], char(34)),
	 [GRANT_NBR] = quotename([GRANT_NBR], char(34)),
	 [KZWSO] = quotename([KZWSO], char(34)),
	 [GMCONTROL] = quotename([GMCONTROL], char(34)),
	 [POSTING_CHANGE] = quotename([POSTING_CHANGE], char(34)),
	 [UM_PS_PSP_PNR] = quotename([UM_PS_PSP_PNR], char(34)),
	 [PRE_VL_ETENS] = quotename([PRE_VL_ETENS], char(34)),
	 [SPE_GEN_ELIKZ] = quotename([SPE_GEN_ELIKZ], char(34)),
	 [SPE_SCRAP_IND] = quotename([SPE_SCRAP_IND], char(34)),
	 [SPE_AUTH_NUMBER] = quotename([SPE_AUTH_NUMBER], char(34)),
	 [SPE_INSPOUT_GUID] = quotename([SPE_INSPOUT_GUID], char(34)),
	 [SPE_FOLLOW_UP] = quotename([SPE_FOLLOW_UP], char(34)),
	 [SPE_EXP_DATE_EXT] = quotename([SPE_EXP_DATE_EXT], char(34)),
	 [SPE_EXP_DATE_INT] = quotename([SPE_EXP_DATE_INT], char(34)),
	 [SPE_AUTH_COMPLET] = quotename([SPE_AUTH_COMPLET], char(34)),
	 [ORMNG] = quotename([ORMNG], char(34)),
	 [SPE_ATP_TMSTMP] = quotename([SPE_ATP_TMSTMP], char(34)),
	 [SPE_ORIG_SYS] = quotename([SPE_ORIG_SYS], char(34)),
	 [SPE_LIEFFZ] = quotename([SPE_LIEFFZ], char(34)),
	 [SPE_IMWRK] = quotename([SPE_IMWRK], char(34)),
	 [SPE_LIFEXPOS2] = quotename([SPE_LIFEXPOS2], char(34)),
	 [SPE_EXCEPT_CODE] = quotename([SPE_EXCEPT_CODE], char(34)),
	 [SPE_KEEP_QTY] = quotename([SPE_KEEP_QTY], char(34)),
	 [SPE_ALTERNATE] = quotename([SPE_ALTERNATE], char(34)),
	 [SPE_MAT_SUBST] = quotename([SPE_MAT_SUBST], char(34)),
	 [SPE_STRUC] = quotename([SPE_STRUC], char(34)),
	 [SPE_APO_QNTYFAC] = quotename([SPE_APO_QNTYFAC], char(34)),
	 [SPE_APO_QNTYDIV] = quotename([SPE_APO_QNTYDIV], char(34)),
	 [SPE_HERKL] = quotename([SPE_HERKL], char(34)),
	 [SPE_BXP_DATE_EXT] = quotename([SPE_BXP_DATE_EXT], char(34)),
	 [SPE_VERSION] = quotename([SPE_VERSION], char(34)),
	 [SPE_COMPL_MVT] = quotename([SPE_COMPL_MVT], char(34)),
	 [J_1BTAXLW4] = quotename([J_1BTAXLW4], char(34)),
	 [J_1BTAXLW5] = quotename([J_1BTAXLW5], char(34)),
	 [J_1BTAXLW3] = quotename([J_1BTAXLW3], char(34)),
	 [BUDGET_PD] = quotename([BUDGET_PD], char(34)),
	 [KBNKZ] = quotename([KBNKZ], char(34)),
	 [SITKZ] = quotename([SITKZ], char(34)),
	 [CONS_ORDER] = quotename([CONS_ORDER], char(34)),
	 [ETL_DATA_SOURCE] = quotename([ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename([ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = convert(varchar(50), [ETL_LOAD_DATE], 21)
from SAP_Production.dbo.LIPS