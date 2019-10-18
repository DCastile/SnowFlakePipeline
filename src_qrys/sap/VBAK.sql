select
 [MANDT] = isNull(quotename([MANDT], char(34)), '\N'),
 [VBELN] = isNull(quotename([VBELN], char(34)), '\N'),
 [ERDAT] = isNull(convert(varchar(50), [ERDAT], 21), '\N'),
 [ERZET] = isNull(quotename([ERZET], char(34)), '\N'),
 [ERNAM] = isNull(quotename([ERNAM], char(34)), '\N'),
 [ANGDT] = isNull(convert(varchar(50), [ANGDT], 21), '\N'),
 [BNDDT] = isNull(convert(varchar(50), [BNDDT], 21), '\N'),
 [AUDAT] = isNull(convert(varchar(50), [AUDAT], 21), '\N'),
 [VBTYP] = isNull(quotename([VBTYP], char(34)), '\N'),
 [TRVOG] = isNull(quotename([TRVOG], char(34)), '\N'),
 [AUART] = isNull(quotename([AUART], char(34)), '\N'),
 [AUGRU] = isNull(quotename([AUGRU], char(34)), '\N'),
 [GWLDT] = isNull(convert(varchar(50), [GWLDT], 21), '\N'),
 [SUBMI] = isNull(quotename([SUBMI], char(34)), '\N'),
 [LIFSK] = isNull(quotename([LIFSK], char(34)), '\N'),
 [FAKSK] = isNull(quotename([FAKSK], char(34)), '\N'),
 [NETWR] = isNull(quotename([NETWR], char(34)), '\N'),
 [WAERK] = isNull(quotename([WAERK], char(34)), '\N'),
 [VKORG] = isNull(quotename([VKORG], char(34)), '\N'),
 [VTWEG] = isNull(quotename([VTWEG], char(34)), '\N'),
 [SPART] = isNull(quotename([SPART], char(34)), '\N'),
 [VKGRP] = isNull(quotename([VKGRP], char(34)), '\N'),
 [VKBUR] = isNull(quotename([VKBUR], char(34)), '\N'),
 [GSBER] = isNull(quotename([GSBER], char(34)), '\N'),
 [GSKST] = isNull(quotename([GSKST], char(34)), '\N'),
 [GUEBG] = isNull(convert(varchar(50), [GUEBG], 21), '\N'),
 [GUEEN] = isNull(convert(varchar(50), [GUEEN], 21), '\N'),
 [KNUMV] = isNull(quotename([KNUMV], char(34)), '\N'),
 [VDATU] = isNull(convert(varchar(50), [VDATU], 21), '\N'),
 [VPRGR] = isNull(quotename([VPRGR], char(34)), '\N'),
 [AUTLF] = isNull(quotename([AUTLF], char(34)), '\N'),
 [VBKLA] = isNull(quotename([VBKLA], char(34)), '\N'),
 [VBKLT] = isNull(quotename([VBKLT], char(34)), '\N'),
 [KALSM] = isNull(quotename([KALSM], char(34)), '\N'),
 [VSBED] = isNull(quotename([VSBED], char(34)), '\N'),
 [FKARA] = isNull(quotename([FKARA], char(34)), '\N'),
 [AWAHR] = isNull(quotename([AWAHR], char(34)), '\N'),
 [KTEXT] = isNull(quotename([KTEXT], char(34)), '\N'),
 [BSTNK] = isNull(quotename([BSTNK], char(34)), '\N'),
 [BSARK] = isNull(quotename([BSARK], char(34)), '\N'),
 [BSTDK] = isNull(convert(varchar(50), [BSTDK], 21), '\N'),
 [BSTZD] = isNull(quotename([BSTZD], char(34)), '\N'),
 [IHREZ] = isNull(quotename([IHREZ], char(34)), '\N'),
 [BNAME] = isNull(quotename([BNAME], char(34)), '\N'),
 [TELF1] = isNull(quotename([TELF1], char(34)), '\N'),
 [MAHZA] = isNull(quotename([MAHZA], char(34)), '\N'),
 [MAHDT] = isNull(convert(varchar(50), [MAHDT], 21), '\N'),
 [KUNNR] = isNull(quotename([KUNNR], char(34)), '\N'),
 [KOSTL] = isNull(quotename([KOSTL], char(34)), '\N'),
 [STAFO] = isNull(quotename([STAFO], char(34)), '\N'),
 [STWAE] = isNull(quotename([STWAE], char(34)), '\N'),
 [AEDAT] = isNull(convert(varchar(50), [AEDAT], 21), '\N'),
 [KVGR1] = isNull(quotename([KVGR1], char(34)), '\N'),
 [KVGR2] = isNull(quotename([KVGR2], char(34)), '\N'),
 [KVGR3] = isNull(quotename([KVGR3], char(34)), '\N'),
 [KVGR4] = isNull(quotename([KVGR4], char(34)), '\N'),
 [KVGR5] = isNull(quotename([KVGR5], char(34)), '\N'),
 [KNUMA] = isNull(quotename([KNUMA], char(34)), '\N'),
 [KOKRS] = isNull(quotename([KOKRS], char(34)), '\N'),
 [PS_PSP_PNR] = isNull(quotename([PS_PSP_PNR], char(34)), '\N'),
 [KURST] = isNull(quotename([KURST], char(34)), '\N'),
 [KKBER] = isNull(quotename([KKBER], char(34)), '\N'),
 [KNKLI] = isNull(quotename([KNKLI], char(34)), '\N'),
 [GRUPP] = isNull(quotename([GRUPP], char(34)), '\N'),
 [SBGRP] = isNull(quotename([SBGRP], char(34)), '\N'),
 [CTLPC] = isNull(quotename([CTLPC], char(34)), '\N'),
 [CMWAE] = isNull(quotename([CMWAE], char(34)), '\N'),
 [CMFRE] = isNull(convert(varchar(50), [CMFRE], 21), '\N'),
 [CMNUP] = isNull(convert(varchar(50), [CMNUP], 21), '\N'),
 [CMNGV] = isNull(convert(varchar(50), [CMNGV], 21), '\N'),
 [AMTBL] = isNull(quotename([AMTBL], char(34)), '\N'),
 [HITYP_PR] = isNull(quotename([HITYP_PR], char(34)), '\N'),
 [ABRVW] = isNull(quotename([ABRVW], char(34)), '\N'),
 [ABDIS] = isNull(quotename([ABDIS], char(34)), '\N'),
 [VGBEL] = isNull(quotename([VGBEL], char(34)), '\N'),
 [OBJNR] = isNull(quotename([OBJNR], char(34)), '\N'),
 [BUKRS_VF] = isNull(quotename([BUKRS_VF], char(34)), '\N'),
 [TAXK1] = isNull(quotename([TAXK1], char(34)), '\N'),
 [TAXK2] = isNull(quotename([TAXK2], char(34)), '\N'),
 [TAXK3] = isNull(quotename([TAXK3], char(34)), '\N'),
 [TAXK4] = isNull(quotename([TAXK4], char(34)), '\N'),
 [TAXK5] = isNull(quotename([TAXK5], char(34)), '\N'),
 [TAXK6] = isNull(quotename([TAXK6], char(34)), '\N'),
 [TAXK7] = isNull(quotename([TAXK7], char(34)), '\N'),
 [TAXK8] = isNull(quotename([TAXK8], char(34)), '\N'),
 [TAXK9] = isNull(quotename([TAXK9], char(34)), '\N'),
 [XBLNR] = isNull(quotename([XBLNR], char(34)), '\N'),
 [ZUONR] = isNull(quotename([ZUONR], char(34)), '\N'),
 [VGTYP] = isNull(quotename([VGTYP], char(34)), '\N'),
 [KALSM_CH] = isNull(quotename([KALSM_CH], char(34)), '\N'),
 [AGRZR] = isNull(quotename([AGRZR], char(34)), '\N'),
 [AUFNR] = isNull(quotename([AUFNR], char(34)), '\N'),
 [QMNUM] = isNull(quotename([QMNUM], char(34)), '\N'),
 [VBELN_GRP] = isNull(quotename([VBELN_GRP], char(34)), '\N'),
 [SCHEME_GRP] = isNull(quotename([SCHEME_GRP], char(34)), '\N'),
 [ABRUF_PART] = isNull(quotename([ABRUF_PART], char(34)), '\N'),
 [ABHOD] = isNull(convert(varchar(50), [ABHOD], 21), '\N'),
 [ABHOV] = isNull(quotename([ABHOV], char(34)), '\N'),
 [ABHOB] = isNull(quotename([ABHOB], char(34)), '\N'),
 [RPLNR] = isNull(quotename([RPLNR], char(34)), '\N'),
 [VZEIT] = isNull(quotename([VZEIT], char(34)), '\N'),
 [STCEG_L] = isNull(quotename([STCEG_L], char(34)), '\N'),
 [LANDTX] = isNull(quotename([LANDTX], char(34)), '\N'),
 [XEGDR] = isNull(quotename([XEGDR], char(34)), '\N'),
 [ENQUEUE_GRP] = isNull(quotename([ENQUEUE_GRP], char(34)), '\N'),
 [DAT_FZAU] = isNull(convert(varchar(50), [DAT_FZAU], 21), '\N'),
 [FMBDAT] = isNull(convert(varchar(50), [FMBDAT], 21), '\N'),
 [VSNMR_V] = isNull(quotename([VSNMR_V], char(34)), '\N'),
 [HANDLE] = isNull(quotename([HANDLE], char(34)), '\N'),
 [PROLI] = isNull(quotename([PROLI], char(34)), '\N'),
 [CONT_DG] = isNull(quotename([CONT_DG], char(34)), '\N'),
 [CRM_GUID] = isNull(quotename([CRM_GUID], char(34)), '\N'),
 [UPD_TMSTMP] = isNull(quotename([UPD_TMSTMP], char(34)), '\N'),
 [MSR_ID] = isNull(quotename([MSR_ID], char(34)), '\N'),
 [TM_CTRL_KEY] = isNull(quotename([TM_CTRL_KEY], char(34)), '\N'),
 [HANDOVERLOC] = isNull(quotename([HANDOVERLOC], char(34)), '\N'),
 [PSM_BUDAT] = isNull(convert(varchar(50), [PSM_BUDAT], 21), '\N'),
 [SWENR] = isNull(quotename([SWENR], char(34)), '\N'),
 [SMENR] = isNull(quotename([SMENR], char(34)), '\N'),
 [PHASE] = isNull(quotename([PHASE], char(34)), '\N'),
 [MTLAUR] = isNull(quotename([MTLAUR], char(34)), '\N'),
 [STAGE] = isNull(quotename([STAGE], char(34)), '\N'),
 [HB_CONT_REASON] = isNull(quotename([HB_CONT_REASON], char(34)), '\N'),
 [HB_EXPDATE] = isNull(convert(varchar(50), [HB_EXPDATE], 21), '\N'),
 [HB_RESDATE] = isNull(convert(varchar(50), [HB_RESDATE], 21), '\N'),
 [MILL_APPL_ID] = isNull(quotename([MILL_APPL_ID], char(34)), '\N'),
 [LOGSYSB] = isNull(quotename([LOGSYSB], char(34)), '\N'),
 [KALCD] = isNull(quotename([KALCD], char(34)), '\N'),
 [MULTI] = isNull(quotename([MULTI], char(34)), '\N'),
 [SPPAYM] = isNull(quotename([SPPAYM], char(34)), '\N'),
 [WTYSC_CLM_HDR] = isNull(quotename([WTYSC_CLM_HDR], char(34)), '\N'),
 [ZZBGRP] = isNull(quotename([ZZBGRP], char(34)), '\N'),
 [ZSFDCOPPID] = isNull(quotename([ZSFDCOPPID], char(34)), '\N'),
 [ZMARGIN] = isNull(quotename([ZMARGIN], char(34)), '\N'),
 [ZCASENO] = isNull(quotename([ZCASENO], char(34)), '\N'),
 [ZCOMPCAT] = isNull(quotename([ZCOMPCAT], char(34)), '\N'),
 [ETL_DATA_SOURCE] = isNull(quotename([ETL_DATA_SOURCE], char(34)), '\N'),
 [ETL_PROCESS_ID] = isNull(quotename([ETL_PROCESS_ID], char(34)), '\N'),
 [ETL_LOAD_DATE] = isNull(convert(varchar(50), [ETL_LOAD_DATE], 21), '\N')
from SAP_Production.dbo.VBAK