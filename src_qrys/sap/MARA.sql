select
	 [MANDT] = isNull(quotename([MANDT], char(34)), '\N'),
	 [MATNR] = isNull(quotename([MATNR], char(34)), '\N'),
	 [ERSDA] = isNull(convert(varchar(50), [ERSDA], 21), '\N'),
	 [ERNAM] = isNull(quotename([ERNAM], char(34)), '\N'),
	 [LAEDA] = isNull(convert(varchar(50), [LAEDA], 21), '\N'),
	 [AENAM] = isNull(quotename([AENAM], char(34)), '\N'),
	 [VPSTA] = isNull(quotename([VPSTA], char(34)), '\N'),
	 [PSTAT] = isNull(quotename([PSTAT], char(34)), '\N'),
	 [LVORM] = isNull(quotename([LVORM], char(34)), '\N'),
	 [MTART] = isNull(quotename([MTART], char(34)), '\N'),
	 [MBRSH] = isNull(quotename([MBRSH], char(34)), '\N'),
	 [MATKL] = isNull(quotename([MATKL], char(34)), '\N'),
	 [BISMT] = isNull(quotename([BISMT], char(34)), '\N'),
	 [MEINS] = isNull(quotename([MEINS], char(34)), '\N'),
	 [BSTME] = isNull(quotename([BSTME], char(34)), '\N'),
	 [ZEINR] = isNull(quotename([ZEINR], char(34)), '\N'),
	 [ZEIAR] = isNull(quotename([ZEIAR], char(34)), '\N'),
	 [ZEIVR] = isNull(quotename([ZEIVR], char(34)), '\N'),
	 [ZEIFO] = isNull(quotename([ZEIFO], char(34)), '\N'),
	 [AESZN] = isNull(quotename([AESZN], char(34)), '\N'),
	 [BLATT] = isNull(quotename([BLATT], char(34)), '\N'),
	 [BLANZ] = isNull(quotename([BLANZ], char(34)), '\N'),
	 [FERTH] = isNull(quotename([FERTH], char(34)), '\N'),
	 [FORMT] = isNull(quotename([FORMT], char(34)), '\N'),
	 [GROES] = isNull(quotename([GROES], char(34)), '\N'),
	 [WRKST] = isNull(quotename([WRKST], char(34)), '\N'),
	 [NORMT] = isNull(quotename([NORMT], char(34)), '\N'),
	 [LABOR] = isNull(quotename([LABOR], char(34)), '\N'),
	 [EKWSL] = isNull(quotename([EKWSL], char(34)), '\N'),
	 [BRGEW] = isNull(quotename([BRGEW], char(34)), '\N'),
	 [NTGEW] = isNull(quotename([NTGEW], char(34)), '\N'),
	 [GEWEI] = isNull(quotename([GEWEI], char(34)), '\N'),
	 [VOLUM] = isNull(quotename([VOLUM], char(34)), '\N'),
	 [VOLEH] = isNull(quotename([VOLEH], char(34)), '\N'),
	 [BEHVO] = isNull(quotename([BEHVO], char(34)), '\N'),
	 [RAUBE] = isNull(quotename([RAUBE], char(34)), '\N'),
	 [TEMPB] = isNull(quotename([TEMPB], char(34)), '\N'),
	 [DISST] = isNull(quotename([DISST], char(34)), '\N'),
	 [TRAGR] = isNull(quotename([TRAGR], char(34)), '\N'),
	 [STOFF] = isNull(quotename([STOFF], char(34)), '\N'),
	 [SPART] = isNull(quotename([SPART], char(34)), '\N'),
	 [KUNNR] = isNull(quotename([KUNNR], char(34)), '\N'),
	 [EANNR] = isNull(quotename([EANNR], char(34)), '\N'),
	 [WESCH] = isNull(quotename([WESCH], char(34)), '\N'),
	 [BWVOR] = isNull(quotename([BWVOR], char(34)), '\N'),
	 [BWSCL] = isNull(quotename([BWSCL], char(34)), '\N'),
	 [SAISO] = isNull(quotename([SAISO], char(34)), '\N'),
	 [ETIAR] = isNull(quotename([ETIAR], char(34)), '\N'),
	 [ETIFO] = isNull(quotename([ETIFO], char(34)), '\N'),
	 [ENTAR] = isNull(quotename([ENTAR], char(34)), '\N'),
	 [EAN11] = isNull(quotename([EAN11], char(34)), '\N'),
	 [NUMTP] = isNull(quotename([NUMTP], char(34)), '\N'),
	 [LAENG] = isNull(quotename([LAENG], char(34)), '\N'),
	 [BREIT] = isNull(quotename([BREIT], char(34)), '\N'),
	 [HOEHE] = isNull(quotename([HOEHE], char(34)), '\N'),
	 [MEABM] = isNull(quotename([MEABM], char(34)), '\N'),
	 [PRDHA] = isNull(quotename([PRDHA], char(34)), '\N'),
	 [AEKLK] = isNull(quotename([AEKLK], char(34)), '\N'),
	 [CADKZ] = isNull(quotename([CADKZ], char(34)), '\N'),
	 [QMPUR] = isNull(quotename([QMPUR], char(34)), '\N'),
	 [ERGEW] = isNull(quotename([ERGEW], char(34)), '\N'),
	 [ERGEI] = isNull(quotename([ERGEI], char(34)), '\N'),
	 [ERVOL] = isNull(quotename([ERVOL], char(34)), '\N'),
	 [ERVOE] = isNull(quotename([ERVOE], char(34)), '\N'),
	 [GEWTO] = isNull(quotename([GEWTO], char(34)), '\N'),
	 [VOLTO] = isNull(quotename([VOLTO], char(34)), '\N'),
	 [VABME] = isNull(quotename([VABME], char(34)), '\N'),
	 [KZREV] = isNull(quotename([KZREV], char(34)), '\N'),
	 [KZKFG] = isNull(quotename([KZKFG], char(34)), '\N'),
	 [XCHPF] = isNull(quotename([XCHPF], char(34)), '\N'),
	 [VHART] = isNull(quotename([VHART], char(34)), '\N'),
	 [FUELG] = isNull(quotename([FUELG], char(34)), '\N'),
	 [STFAK] = isNull(quotename([STFAK], char(34)), '\N'),
	 [MAGRV] = isNull(quotename([MAGRV], char(34)), '\N'),
	 [BEGRU] = isNull(quotename([BEGRU], char(34)), '\N'),
	 [DATAB] = isNull(convert(varchar(50), [DATAB], 21), '\N'),
	 [LIQDT] = isNull(convert(varchar(50), [LIQDT], 21), '\N'),
	 [SAISJ] = isNull(quotename([SAISJ], char(34)), '\N'),
	 [PLGTP] = isNull(quotename([PLGTP], char(34)), '\N'),
	 [MLGUT] = isNull(quotename([MLGUT], char(34)), '\N'),
	 [EXTWG] = isNull(quotename([EXTWG], char(34)), '\N'),
	 [SATNR] = isNull(quotename([SATNR], char(34)), '\N'),
	 [ATTYP] = isNull(quotename([ATTYP], char(34)), '\N'),
	 [KZKUP] = isNull(quotename([KZKUP], char(34)), '\N'),
	 [KZNFM] = isNull(quotename([KZNFM], char(34)), '\N'),
	 [PMATA] = isNull(quotename([PMATA], char(34)), '\N'),
	 [MSTAE] = isNull(quotename([MSTAE], char(34)), '\N'),
	 [MSTAV] = isNull(quotename([MSTAV], char(34)), '\N'),
	 [MSTDE] = isNull(convert(varchar(50), [MSTDE], 21), '\N'),
	 [MSTDV] = isNull(convert(varchar(50), [MSTDV], 21), '\N'),
	 [TAKLV] = isNull(quotename([TAKLV], char(34)), '\N'),
	 [RBNRM] = isNull(quotename([RBNRM], char(34)), '\N'),
	 [MHDRZ] = isNull(quotename([MHDRZ], char(34)), '\N'),
	 [MHDHB] = isNull(quotename([MHDHB], char(34)), '\N'),
	 [MHDLP] = isNull(quotename([MHDLP], char(34)), '\N'),
	 [INHME] = isNull(quotename([INHME], char(34)), '\N'),
	 [INHAL] = isNull(quotename([INHAL], char(34)), '\N'),
	 [VPREH] = isNull(quotename([VPREH], char(34)), '\N'),
	 [ETIAG] = isNull(quotename([ETIAG], char(34)), '\N'),
	 [INHBR] = isNull(quotename([INHBR], char(34)), '\N'),
	 [CMETH] = isNull(quotename([CMETH], char(34)), '\N'),
	 [CUOBF] = isNull(quotename([CUOBF], char(34)), '\N'),
	 [KZUMW] = isNull(quotename([KZUMW], char(34)), '\N'),
	 [KOSCH] = isNull(quotename([KOSCH], char(34)), '\N'),
	 [SPROF] = isNull(quotename([SPROF], char(34)), '\N'),
	 [NRFHG] = isNull(quotename([NRFHG], char(34)), '\N'),
	 [MFRPN] = isNull(quotename([MFRPN], char(34)), '\N'),
	 [MFRNR] = isNull(quotename([MFRNR], char(34)), '\N'),
	 [BMATN] = isNull(quotename([BMATN], char(34)), '\N'),
	 [MPROF] = isNull(quotename([MPROF], char(34)), '\N'),
	 [KZWSM] = isNull(quotename([KZWSM], char(34)), '\N'),
	 [SAITY] = isNull(quotename([SAITY], char(34)), '\N'),
	 [PROFL] = isNull(quotename([PROFL], char(34)), '\N'),
	 [IHIVI] = isNull(quotename([IHIVI], char(34)), '\N'),
	 [ILOOS] = isNull(quotename([ILOOS], char(34)), '\N'),
	 [SERLV] = isNull(quotename([SERLV], char(34)), '\N'),
	 [KZGVH] = isNull(quotename([KZGVH], char(34)), '\N'),
	 [XGCHP] = isNull(quotename([XGCHP], char(34)), '\N'),
	 [KZEFF] = isNull(quotename([KZEFF], char(34)), '\N'),
	 [COMPL] = isNull(quotename([COMPL], char(34)), '\N'),
	 [IPRKZ] = isNull(quotename([IPRKZ], char(34)), '\N'),
	 [RDMHD] = isNull(quotename([RDMHD], char(34)), '\N'),
	 [PRZUS] = isNull(quotename([PRZUS], char(34)), '\N'),
	 [MTPOS_MARA] = isNull(quotename([MTPOS_MARA], char(34)), '\N'),
	 [BFLME] = isNull(quotename([BFLME], char(34)), '\N'),
	 [MATFI] = isNull(quotename([MATFI], char(34)), '\N'),
	 [CMREL] = isNull(quotename([CMREL], char(34)), '\N'),
	 [BBTYP] = isNull(quotename([BBTYP], char(34)), '\N'),
	 [SLED_BBD] = isNull(quotename([SLED_BBD], char(34)), '\N'),
	 [GTIN_VARIANT] = isNull(quotename([GTIN_VARIANT], char(34)), '\N'),
	 [GENNR] = isNull(quotename([GENNR], char(34)), '\N'),
	 [RMATP] = isNull(quotename([RMATP], char(34)), '\N'),
	 [GDS_RELEVANT] = isNull(quotename([GDS_RELEVANT], char(34)), '\N'),
	 [WEORA] = isNull(quotename([WEORA], char(34)), '\N'),
	 [HUTYP_DFLT] = isNull(quotename([HUTYP_DFLT], char(34)), '\N'),
	 [PILFERABLE] = isNull(quotename([PILFERABLE], char(34)), '\N'),
	 [WHSTC] = isNull(quotename([WHSTC], char(34)), '\N'),
	 [WHMATGR] = isNull(quotename([WHMATGR], char(34)), '\N'),
	 [HNDLCODE] = isNull(quotename([HNDLCODE], char(34)), '\N'),
	 [HAZMAT] = isNull(quotename([HAZMAT], char(34)), '\N'),
	 [HUTYP] = isNull(quotename([HUTYP], char(34)), '\N'),
	 [TARE_VAR] = isNull(quotename([TARE_VAR], char(34)), '\N'),
	 [MAXC] = isNull(quotename([MAXC], char(34)), '\N'),
	 [MAXC_TOL] = isNull(quotename([MAXC_TOL], char(34)), '\N'),
	 [MAXL] = isNull(quotename([MAXL], char(34)), '\N'),
	 [MAXB] = isNull(quotename([MAXB], char(34)), '\N'),
	 [MAXH] = isNull(quotename([MAXH], char(34)), '\N'),
	 [MAXDIM_UOM] = isNull(quotename([MAXDIM_UOM], char(34)), '\N'),
	 [HERKL] = isNull(quotename([HERKL], char(34)), '\N'),
	 [MFRGR] = isNull(quotename([MFRGR], char(34)), '\N'),
	 [QQTIME] = isNull(quotename([QQTIME], char(34)), '\N'),
	 [QQTIMEUOM] = isNull(quotename([QQTIMEUOM], char(34)), '\N'),
	 [QGRP] = isNull(quotename([QGRP], char(34)), '\N'),
	 [SERIAL] = isNull(quotename([SERIAL], char(34)), '\N'),
	 [PS_SMARTFORM] = isNull(quotename([PS_SMARTFORM], char(34)), '\N'),
	 [LOGUNIT] = isNull(quotename([LOGUNIT], char(34)), '\N'),
	 [CWQREL] = isNull(quotename([CWQREL], char(34)), '\N'),
	 [CWQPROC] = isNull(quotename([CWQPROC], char(34)), '\N'),
	 [CWQTOLGR] = isNull(quotename([CWQTOLGR], char(34)), '\N'),
	 [ADPROF] = isNull(quotename([ADPROF], char(34)), '\N'),
	 [IPMIPPRODUCT] = isNull(quotename([IPMIPPRODUCT], char(34)), '\N'),
	 [ALLOW_PMAT_IGNO] = isNull(quotename([ALLOW_PMAT_IGNO], char(34)), '\N'),
	 [MEDIUM] = isNull(quotename([MEDIUM], char(34)), '\N'),
	 [COMMODITY] = isNull(quotename([COMMODITY], char(34)), '\N'),
	 [ANIMAL_ORIGIN] = isNull(quotename([ANIMAL_ORIGIN], char(34)), '\N'),
	 [TEXTILE_COMP_IND] = isNull(quotename([TEXTILE_COMP_IND], char(34)), '\N'),
	 [ANP] = isNull(quotename([ANP], char(34)), '\N'),
	 [/BEV1/LULEINH] = isNull(quotename([/BEV1/LULEINH], char(34)), '\N'),
	 [/BEV1/LULDEGRP] = isNull(quotename([/BEV1/LULDEGRP], char(34)), '\N'),
	 [/BEV1/NESTRUCCAT] = isNull(quotename([/BEV1/NESTRUCCAT], char(34)), '\N'),
	 [/DSD/SL_TOLTYP] = isNull(quotename([/DSD/SL_TOLTYP], char(34)), '\N'),
	 [/DSD/SV_CNT_GRP] = isNull(quotename([/DSD/SV_CNT_GRP], char(34)), '\N'),
	 [/DSD/VC_GROUP] = isNull(quotename([/DSD/VC_GROUP], char(34)), '\N'),
	 [/VSO/R_TILT_IND] = isNull(quotename([/VSO/R_TILT_IND], char(34)), '\N'),
	 [/VSO/R_STACK_IND] = isNull(quotename([/VSO/R_STACK_IND], char(34)), '\N'),
	 [/VSO/R_BOT_IND] = isNull(quotename([/VSO/R_BOT_IND], char(34)), '\N'),
	 [/VSO/R_TOP_IND] = isNull(quotename([/VSO/R_TOP_IND], char(34)), '\N'),
	 [/VSO/R_STACK_NO] = isNull(quotename([/VSO/R_STACK_NO], char(34)), '\N'),
	 [/VSO/R_PAL_IND] = isNull(quotename([/VSO/R_PAL_IND], char(34)), '\N'),
	 [/VSO/R_PAL_OVR_D] = isNull(quotename([/VSO/R_PAL_OVR_D], char(34)), '\N'),
	 [/VSO/R_PAL_OVR_W] = isNull(quotename([/VSO/R_PAL_OVR_W], char(34)), '\N'),
	 [/VSO/R_PAL_B_HT] = isNull(quotename([/VSO/R_PAL_B_HT], char(34)), '\N'),
	 [/VSO/R_PAL_MIN_H] = isNull(quotename([/VSO/R_PAL_MIN_H], char(34)), '\N'),
	 [/VSO/R_TOL_B_HT] = isNull(quotename([/VSO/R_TOL_B_HT], char(34)), '\N'),
	 [/VSO/R_NO_P_GVH] = isNull(quotename([/VSO/R_NO_P_GVH], char(34)), '\N'),
	 [/VSO/R_QUAN_UNIT] = isNull(quotename([/VSO/R_QUAN_UNIT], char(34)), '\N'),
	 [/VSO/R_KZGVH_IND] = isNull(quotename([/VSO/R_KZGVH_IND], char(34)), '\N'),
	 [PACKCODE] = isNull(quotename([PACKCODE], char(34)), '\N'),
	 [DG_PACK_STATUS] = isNull(quotename([DG_PACK_STATUS], char(34)), '\N'),
	 [MCOND] = isNull(quotename([MCOND], char(34)), '\N'),
	 [RETDELC] = isNull(quotename([RETDELC], char(34)), '\N'),
	 [LOGLEV_RETO] = isNull(quotename([LOGLEV_RETO], char(34)), '\N'),
	 [NSNID] = isNull(quotename([NSNID], char(34)), '\N'),
	 [ADSPC_SPC] = isNull(quotename([ADSPC_SPC], char(34)), '\N'),
	 [IMATN] = isNull(quotename([IMATN], char(34)), '\N'),
	 [PICNUM] = isNull(quotename([PICNUM], char(34)), '\N'),
	 [BSTAT] = isNull(quotename([BSTAT], char(34)), '\N'),
	 [COLOR_ATINN] = isNull(quotename([COLOR_ATINN], char(34)), '\N'),
	 [SIZE1_ATINN] = isNull(quotename([SIZE1_ATINN], char(34)), '\N'),
	 [SIZE2_ATINN] = isNull(quotename([SIZE2_ATINN], char(34)), '\N'),
	 [COLOR] = isNull(quotename([COLOR], char(34)), '\N'),
	 [SIZE1] = isNull(quotename([SIZE1], char(34)), '\N'),
	 [SIZE2] = isNull(quotename([SIZE2], char(34)), '\N'),
	 [FREE_CHAR] = isNull(quotename([FREE_CHAR], char(34)), '\N'),
	 [CARE_CODE] = isNull(quotename([CARE_CODE], char(34)), '\N'),
	 [BRAND_ID] = isNull(quotename([BRAND_ID], char(34)), '\N'),
	 [FIBER_CODE1] = isNull(quotename([FIBER_CODE1], char(34)), '\N'),
	 [FIBER_PART1] = isNull(quotename([FIBER_PART1], char(34)), '\N'),
	 [FIBER_CODE2] = isNull(quotename([FIBER_CODE2], char(34)), '\N'),
	 [FIBER_PART2] = isNull(quotename([FIBER_PART2], char(34)), '\N'),
	 [FIBER_CODE3] = isNull(quotename([FIBER_CODE3], char(34)), '\N'),
	 [FIBER_PART3] = isNull(quotename([FIBER_PART3], char(34)), '\N'),
	 [FIBER_CODE4] = isNull(quotename([FIBER_CODE4], char(34)), '\N'),
	 [FIBER_PART4] = isNull(quotename([FIBER_PART4], char(34)), '\N'),
	 [FIBER_CODE5] = isNull(quotename([FIBER_CODE5], char(34)), '\N'),
	 [FIBER_PART5] = isNull(quotename([FIBER_PART5], char(34)), '\N'),
	 [FASHGRD] = isNull(quotename([FASHGRD], char(34)), '\N'),
	 [ETL_DATA_SOURCE] = isNull(quotename([ETL_DATA_SOURCE], char(34)), '\N'),
	 [ETL_PROCESS_ID] = isNull(quotename([ETL_PROCESS_ID], char(34)), '\N'),
	 [ETL_LOAD_DATE] = isNull(convert(varchar(50), [ETL_LOAD_DATE], 21), '\N')
from SAP_Production.dbo.MARA