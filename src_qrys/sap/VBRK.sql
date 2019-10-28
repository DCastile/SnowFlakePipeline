select
	 [MANDT] = quotename([MANDT], char(34)),
	 [VBELN] = quotename([VBELN], char(34)),
	 [FKART] = quotename([FKART], char(34)),
	 [FKTYP] = quotename([FKTYP], char(34)),
	 [VBTYP] = quotename([VBTYP], char(34)),
	 [WAERK] = quotename([WAERK], char(34)),
	 [VKORG] = quotename([VKORG], char(34)),
	 [VTWEG] = quotename([VTWEG], char(34)),
	 [KALSM] = quotename([KALSM], char(34)),
	 [KNUMV] = quotename([KNUMV], char(34)),
	 [VSBED] = quotename([VSBED], char(34)),
	 [FKDAT] = convert(varchar(50), [FKDAT], 21),
	 [BELNR] = quotename([BELNR], char(34)),
	 [GJAHR] = quotename([GJAHR], char(34)),
	 [POPER] = quotename([POPER], char(34)),
	 [KONDA] = quotename([KONDA], char(34)),
	 [KDGRP] = quotename([KDGRP], char(34)),
	 [BZIRK] = quotename([BZIRK], char(34)),
	 [PLTYP] = quotename([PLTYP], char(34)),
	 [INCO1] = quotename([INCO1], char(34)),
	 [INCO2] = quotename([INCO2], char(34)),
	 [EXPKZ] = quotename([EXPKZ], char(34)),
	 [RFBSK] = quotename([RFBSK], char(34)),
	 [MRNKZ] = quotename([MRNKZ], char(34)),
	 [KURRF] = quotename([KURRF], char(34)),
	 [CPKUR] = quotename([CPKUR], char(34)),
	 [VALTG] = quotename([VALTG], char(34)),
	 [VALDT] = convert(varchar(50), [VALDT], 21),
	 [ZTERM] = quotename([ZTERM], char(34)),
	 [ZLSCH] = quotename([ZLSCH], char(34)),
	 [KTGRD] = quotename([KTGRD], char(34)),
	 [LAND1] = quotename([LAND1], char(34)),
	 [REGIO] = quotename([REGIO], char(34)),
	 [COUNC] = quotename([COUNC], char(34)),
	 [CITYC] = quotename([CITYC], char(34)),
	 [BUKRS] = quotename([BUKRS], char(34)),
	 [TAXK1] = quotename([TAXK1], char(34)),
	 [TAXK2] = quotename([TAXK2], char(34)),
	 [TAXK3] = quotename([TAXK3], char(34)),
	 [TAXK4] = quotename([TAXK4], char(34)),
	 [TAXK5] = quotename([TAXK5], char(34)),
	 [TAXK6] = quotename([TAXK6], char(34)),
	 [TAXK7] = quotename([TAXK7], char(34)),
	 [TAXK8] = quotename([TAXK8], char(34)),
	 [TAXK9] = quotename([TAXK9], char(34)),
	 [NETWR] = quotename([NETWR], char(34)),
	 [ZUKRI] = quotename([ZUKRI], char(34)),
	 [ERNAM] = quotename([ERNAM], char(34)),
	 [ERZET] = quotename([ERZET], char(34)),
	 [ERDAT] = convert(varchar(50), [ERDAT], 21),
	 [STAFO] = quotename([STAFO], char(34)),
	 [KUNRG] = quotename([KUNRG], char(34)),
	 [KUNAG] = quotename([KUNAG], char(34)),
	 [MABER] = quotename([MABER], char(34)),
	 [STWAE] = quotename([STWAE], char(34)),
	 [EXNUM] = quotename([EXNUM], char(34)),
	 [STCEG] = quotename([STCEG], char(34)),
	 [AEDAT] = convert(varchar(50), [AEDAT], 21),
	 [SFAKN] = quotename([SFAKN], char(34)),
	 [KNUMA] = quotename([KNUMA], char(34)),
	 [FKART_RL] = quotename([FKART_RL], char(34)),
	 [FKDAT_RL] = convert(varchar(50), [FKDAT_RL], 21),
	 [KURST] = quotename([KURST], char(34)),
	 [MSCHL] = quotename([MSCHL], char(34)),
	 [MANSP] = quotename([MANSP], char(34)),
	 [SPART] = quotename([SPART], char(34)),
	 [KKBER] = quotename([KKBER], char(34)),
	 [KNKLI] = quotename([KNKLI], char(34)),
	 [CMWAE] = quotename([CMWAE], char(34)),
	 [CMKUF] = quotename([CMKUF], char(34)),
	 [HITYP_PR] = quotename([HITYP_PR], char(34)),
	 [BSTNK_VF] = quotename([BSTNK_VF], char(34)),
	 [VBUND] = quotename([VBUND], char(34)),
	 [FKART_AB] = quotename([FKART_AB], char(34)),
	 [KAPPL] = quotename([KAPPL], char(34)),
	 [LANDTX] = quotename([LANDTX], char(34)),
	 [STCEG_H] = quotename([STCEG_H], char(34)),
	 [STCEG_L] = quotename([STCEG_L], char(34)),
	 [XBLNR] = quotename([XBLNR], char(34)),
	 [ZUONR] = quotename([ZUONR], char(34)),
	 [MWSBK] = quotename([MWSBK], char(34)),
	 [LOGSYS] = quotename([LOGSYS], char(34)),
	 [FKSTO] = quotename([FKSTO], char(34)),
	 [XEGDR] = quotename([XEGDR], char(34)),
	 [RPLNR] = quotename([RPLNR], char(34)),
	 [LCNUM] = quotename([LCNUM], char(34)),
	 [J_1AFITP] = quotename([J_1AFITP], char(34)),
	 [KURRF_DAT] = convert(varchar(50), [KURRF_DAT], 21),
	 [AKWAE] = quotename([AKWAE], char(34)),
	 [AKKUR] = quotename([AKKUR], char(34)),
	 [KIDNO] = quotename([KIDNO], char(34)),
	 [BVTYP] = quotename([BVTYP], char(34)),
	 [NUMPG] = quotename([NUMPG], char(34)),
	 [BUPLA] = quotename([BUPLA], char(34)),
	 [VKONT] = quotename([VKONT], char(34)),
	 [FKK_DOCSTAT] = quotename([FKK_DOCSTAT], char(34)),
	 [NRZAS] = quotename([NRZAS], char(34)),
	 [SPE_BILLING_IND] = quotename([SPE_BILLING_IND], char(34)),
	 [VTREF] = quotename([VTREF], char(34)),
	 [FK_SOURCE_SYS] = quotename([FK_SOURCE_SYS], char(34)),
	 [FKTYP_CRM] = quotename([FKTYP_CRM], char(34)),
	 [STGRD] = quotename([STGRD], char(34)),
	 [VBTYP_EXT] = quotename([VBTYP_EXT], char(34)),
	 [DPC_REL] = quotename([DPC_REL], char(34)),
	 [MNDID] = quotename([MNDID], char(34)),
	 [PAY_TYPE] = quotename([PAY_TYPE], char(34)),
	 [SEPON] = quotename([SEPON], char(34)),
	 [MNDVG] = quotename([MNDVG], char(34)),
	 [SPPAYM] = quotename([SPPAYM], char(34)),
	 [SPPORD] = quotename([SPPORD], char(34)),
	 [ETL_DATA_SOURCE] = quotename([ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename([ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = convert(varchar(50), [ETL_LOAD_DATE], 21)
from SAP_Production.dbo.VBRK