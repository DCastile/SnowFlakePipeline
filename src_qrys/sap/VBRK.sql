select
	 [MANDT] = concat(char(34), replace(cast([VBRK].[MANDT] as nvarchar(3)), char(34), char(0)), char(34)),
	 [VBELN] = concat(char(34), replace(cast([VBRK].[VBELN] as nvarchar(10)), char(34), char(0)), char(34)),
	 [FKART] = concat(char(34), replace(cast([VBRK].[FKART] as nvarchar(4)), char(34), char(0)), char(34)),
	 [FKTYP] = concat(char(34), replace(cast([VBRK].[FKTYP] as nvarchar(1)), char(34), char(0)), char(34)),
	 [VBTYP] = concat(char(34), replace(cast([VBRK].[VBTYP] as nvarchar(1)), char(34), char(0)), char(34)),
	 [WAERK] = concat(char(34), replace(cast([VBRK].[WAERK] as nvarchar(5)), char(34), char(0)), char(34)),
	 [VKORG] = concat(char(34), replace(cast([VBRK].[VKORG] as nvarchar(4)), char(34), char(0)), char(34)),
	 [VTWEG] = concat(char(34), replace(cast([VBRK].[VTWEG] as nvarchar(2)), char(34), char(0)), char(34)),
	 [KALSM] = concat(char(34), replace(cast([VBRK].[KALSM] as nvarchar(6)), char(34), char(0)), char(34)),
	 [KNUMV] = concat(char(34), replace(cast([VBRK].[KNUMV] as nvarchar(10)), char(34), char(0)), char(34)),
	 [VSBED] = concat(char(34), replace(cast([VBRK].[VSBED] as nvarchar(2)), char(34), char(0)), char(34)),
	 [FKDAT] = concat(char(34), replace(cast([VBRK].[FKDAT] as nvarchar(8)), char(34), char(0)), char(34)),
	 [BELNR] = concat(char(34), replace(cast([VBRK].[BELNR] as nvarchar(10)), char(34), char(0)), char(34)),
	 [GJAHR] = concat(char(34), replace(cast([VBRK].[GJAHR] as nvarchar(4)), char(34), char(0)), char(34)),
	 [POPER] = concat(char(34), replace(cast([VBRK].[POPER] as nvarchar(3)), char(34), char(0)), char(34)),
	 [KONDA] = concat(char(34), replace(cast([VBRK].[KONDA] as nvarchar(2)), char(34), char(0)), char(34)),
	 [KDGRP] = concat(char(34), replace(cast([VBRK].[KDGRP] as nvarchar(2)), char(34), char(0)), char(34)),
	 [BZIRK] = concat(char(34), replace(cast([VBRK].[BZIRK] as nvarchar(6)), char(34), char(0)), char(34)),
	 [PLTYP] = concat(char(34), replace(cast([VBRK].[PLTYP] as nvarchar(2)), char(34), char(0)), char(34)),
	 [INCO1] = concat(char(34), replace(cast([VBRK].[INCO1] as nvarchar(3)), char(34), char(0)), char(34)),
	 [INCO2] = concat(char(34), replace(cast([VBRK].[INCO2] as nvarchar(28)), char(34), char(0)), char(34)),
	 [EXPKZ] = concat(char(34), replace(cast([VBRK].[EXPKZ] as nvarchar(1)), char(34), char(0)), char(34)),
	 [RFBSK] = concat(char(34), replace(cast([VBRK].[RFBSK] as nvarchar(1)), char(34), char(0)), char(34)),
	 [MRNKZ] = concat(char(34), replace(cast([VBRK].[MRNKZ] as nvarchar(1)), char(34), char(0)), char(34)),
	 [KURRF] = cast([VBRK].[KURRF] as varchar(36)),
	 [CPKUR] = concat(char(34), replace(cast([VBRK].[CPKUR] as nvarchar(1)), char(34), char(0)), char(34)),
	 [VALTG] = concat(char(34), replace(cast([VBRK].[VALTG] as nvarchar(2)), char(34), char(0)), char(34)),
	 [VALDT] = concat(char(34), replace(cast([VBRK].[VALDT] as nvarchar(8)), char(34), char(0)), char(34)),
	 [ZTERM] = concat(char(34), replace(cast([VBRK].[ZTERM] as nvarchar(4)), char(34), char(0)), char(34)),
	 [ZLSCH] = concat(char(34), replace(cast([VBRK].[ZLSCH] as nvarchar(1)), char(34), char(0)), char(34)),
	 [KTGRD] = concat(char(34), replace(cast([VBRK].[KTGRD] as nvarchar(2)), char(34), char(0)), char(34)),
	 [LAND1] = concat(char(34), replace(cast([VBRK].[LAND1] as nvarchar(3)), char(34), char(0)), char(34)),
	 [REGIO] = concat(char(34), replace(cast([VBRK].[REGIO] as nvarchar(3)), char(34), char(0)), char(34)),
	 [COUNC] = concat(char(34), replace(cast([VBRK].[COUNC] as nvarchar(3)), char(34), char(0)), char(34)),
	 [CITYC] = concat(char(34), replace(cast([VBRK].[CITYC] as nvarchar(4)), char(34), char(0)), char(34)),
	 [BUKRS] = concat(char(34), replace(cast([VBRK].[BUKRS] as nvarchar(4)), char(34), char(0)), char(34)),
	 [TAXK1] = concat(char(34), replace(cast([VBRK].[TAXK1] as nvarchar(1)), char(34), char(0)), char(34)),
	 [TAXK2] = concat(char(34), replace(cast([VBRK].[TAXK2] as nvarchar(1)), char(34), char(0)), char(34)),
	 [TAXK3] = concat(char(34), replace(cast([VBRK].[TAXK3] as nvarchar(1)), char(34), char(0)), char(34)),
	 [TAXK4] = concat(char(34), replace(cast([VBRK].[TAXK4] as nvarchar(1)), char(34), char(0)), char(34)),
	 [TAXK5] = concat(char(34), replace(cast([VBRK].[TAXK5] as nvarchar(1)), char(34), char(0)), char(34)),
	 [TAXK6] = concat(char(34), replace(cast([VBRK].[TAXK6] as nvarchar(1)), char(34), char(0)), char(34)),
	 [TAXK7] = concat(char(34), replace(cast([VBRK].[TAXK7] as nvarchar(1)), char(34), char(0)), char(34)),
	 [TAXK8] = concat(char(34), replace(cast([VBRK].[TAXK8] as nvarchar(1)), char(34), char(0)), char(34)),
	 [TAXK9] = concat(char(34), replace(cast([VBRK].[TAXK9] as nvarchar(1)), char(34), char(0)), char(34)),
	 [NETWR] = cast([VBRK].[NETWR] as varchar(36)),
	 [ZUKRI] = concat(char(34), replace(cast([VBRK].[ZUKRI] as nvarchar(40)), char(34), char(0)), char(34)),
	 [ERNAM] = concat(char(34), replace(cast([VBRK].[ERNAM] as nvarchar(12)), char(34), char(0)), char(34)),
	 [ERZET] = concat(char(34), replace(cast([VBRK].[ERZET] as nvarchar(6)), char(34), char(0)), char(34)),
	 [ERDAT] = concat(char(34), replace(cast([VBRK].[ERDAT] as nvarchar(8)), char(34), char(0)), char(34)),
	 [STAFO] = concat(char(34), replace(cast([VBRK].[STAFO] as nvarchar(6)), char(34), char(0)), char(34)),
	 [KUNRG] = concat(char(34), replace(cast([VBRK].[KUNRG] as nvarchar(10)), char(34), char(0)), char(34)),
	 [KUNAG] = concat(char(34), replace(cast([VBRK].[KUNAG] as nvarchar(10)), char(34), char(0)), char(34)),
	 [MABER] = concat(char(34), replace(cast([VBRK].[MABER] as nvarchar(2)), char(34), char(0)), char(34)),
	 [STWAE] = concat(char(34), replace(cast([VBRK].[STWAE] as nvarchar(5)), char(34), char(0)), char(34)),
	 [EXNUM] = concat(char(34), replace(cast([VBRK].[EXNUM] as nvarchar(10)), char(34), char(0)), char(34)),
	 [STCEG] = concat(char(34), replace(cast([VBRK].[STCEG] as nvarchar(20)), char(34), char(0)), char(34)),
	 [AEDAT] = concat(char(34), replace(cast([VBRK].[AEDAT] as nvarchar(8)), char(34), char(0)), char(34)),
	 [SFAKN] = concat(char(34), replace(cast([VBRK].[SFAKN] as nvarchar(10)), char(34), char(0)), char(34)),
	 [KNUMA] = concat(char(34), replace(cast([VBRK].[KNUMA] as nvarchar(10)), char(34), char(0)), char(34)),
	 [FKART_RL] = concat(char(34), replace(cast([VBRK].[FKART_RL] as nvarchar(4)), char(34), char(0)), char(34)),
	 [FKDAT_RL] = concat(char(34), replace(cast([VBRK].[FKDAT_RL] as nvarchar(8)), char(34), char(0)), char(34)),
	 [KURST] = concat(char(34), replace(cast([VBRK].[KURST] as nvarchar(4)), char(34), char(0)), char(34)),
	 [MSCHL] = concat(char(34), replace(cast([VBRK].[MSCHL] as nvarchar(1)), char(34), char(0)), char(34)),
	 [MANSP] = concat(char(34), replace(cast([VBRK].[MANSP] as nvarchar(1)), char(34), char(0)), char(34)),
	 [SPART] = concat(char(34), replace(cast([VBRK].[SPART] as nvarchar(2)), char(34), char(0)), char(34)),
	 [KKBER] = concat(char(34), replace(cast([VBRK].[KKBER] as nvarchar(4)), char(34), char(0)), char(34)),
	 [KNKLI] = concat(char(34), replace(cast([VBRK].[KNKLI] as nvarchar(10)), char(34), char(0)), char(34)),
	 [CMWAE] = concat(char(34), replace(cast([VBRK].[CMWAE] as nvarchar(5)), char(34), char(0)), char(34)),
	 [CMKUF] = cast([VBRK].[CMKUF] as varchar(36)),
	 [HITYP_PR] = concat(char(34), replace(cast([VBRK].[HITYP_PR] as nvarchar(1)), char(34), char(0)), char(34)),
	 [BSTNK_VF] = concat(char(34), replace(cast([VBRK].[BSTNK_VF] as nvarchar(35)), char(34), char(0)), char(34)),
	 [VBUND] = concat(char(34), replace(cast([VBRK].[VBUND] as nvarchar(6)), char(34), char(0)), char(34)),
	 [FKART_AB] = concat(char(34), replace(cast([VBRK].[FKART_AB] as nvarchar(4)), char(34), char(0)), char(34)),
	 [KAPPL] = concat(char(34), replace(cast([VBRK].[KAPPL] as nvarchar(2)), char(34), char(0)), char(34)),
	 [LANDTX] = concat(char(34), replace(cast([VBRK].[LANDTX] as nvarchar(3)), char(34), char(0)), char(34)),
	 [STCEG_H] = concat(char(34), replace(cast([VBRK].[STCEG_H] as nvarchar(1)), char(34), char(0)), char(34)),
	 [STCEG_L] = concat(char(34), replace(cast([VBRK].[STCEG_L] as nvarchar(3)), char(34), char(0)), char(34)),
	 [XBLNR] = concat(char(34), replace(cast([VBRK].[XBLNR] as nvarchar(16)), char(34), char(0)), char(34)),
	 [ZUONR] = concat(char(34), replace(cast([VBRK].[ZUONR] as nvarchar(18)), char(34), char(0)), char(34)),
	 [MWSBK] = cast([VBRK].[MWSBK] as varchar(36)),
	 [LOGSYS] = concat(char(34), replace(cast([VBRK].[LOGSYS] as nvarchar(10)), char(34), char(0)), char(34)),
	 [FKSTO] = concat(char(34), replace(cast([VBRK].[FKSTO] as nvarchar(1)), char(34), char(0)), char(34)),
	 [XEGDR] = concat(char(34), replace(cast([VBRK].[XEGDR] as nvarchar(1)), char(34), char(0)), char(34)),
	 [RPLNR] = concat(char(34), replace(cast([VBRK].[RPLNR] as nvarchar(10)), char(34), char(0)), char(34)),
	 [LCNUM] = concat(char(34), replace(cast([VBRK].[LCNUM] as nvarchar(10)), char(34), char(0)), char(34)),
	 [J_1AFITP] = concat(char(34), replace(cast([VBRK].[J_1AFITP] as nvarchar(2)), char(34), char(0)), char(34)),
	 [KURRF_DAT] = concat(char(34), replace(cast([VBRK].[KURRF_DAT] as nvarchar(8)), char(34), char(0)), char(34)),
	 [AKWAE] = concat(char(34), replace(cast([VBRK].[AKWAE] as nvarchar(5)), char(34), char(0)), char(34)),
	 [AKKUR] = cast([VBRK].[AKKUR] as varchar(36)),
	 [KIDNO] = concat(char(34), replace(cast([VBRK].[KIDNO] as nvarchar(30)), char(34), char(0)), char(34)),
	 [BVTYP] = concat(char(34), replace(cast([VBRK].[BVTYP] as nvarchar(4)), char(34), char(0)), char(34)),
	 [NUMPG] = concat(char(34), replace(cast([VBRK].[NUMPG] as nvarchar(3)), char(34), char(0)), char(34)),
	 [BUPLA] = concat(char(34), replace(cast([VBRK].[BUPLA] as nvarchar(4)), char(34), char(0)), char(34)),
	 [VKONT] = concat(char(34), replace(cast([VBRK].[VKONT] as nvarchar(12)), char(34), char(0)), char(34)),
	 [FKK_DOCSTAT] = concat(char(34), replace(cast([VBRK].[FKK_DOCSTAT] as nvarchar(1)), char(34), char(0)), char(34)),
	 [NRZAS] = concat(char(34), replace(cast([VBRK].[NRZAS] as nvarchar(12)), char(34), char(0)), char(34)),
	 [SPE_BILLING_IND] = concat(char(34), replace(cast([VBRK].[SPE_BILLING_IND] as nvarchar(1)), char(34), char(0)), char(34)),
	 [VTREF] = concat(char(34), replace(cast([VBRK].[VTREF] as nvarchar(20)), char(34), char(0)), char(34)),
	 [FK_SOURCE_SYS] = concat(char(34), replace(cast([VBRK].[FK_SOURCE_SYS] as nvarchar(10)), char(34), char(0)), char(34)),
	 [FKTYP_CRM] = concat(char(34), replace(cast([VBRK].[FKTYP_CRM] as nvarchar(1)), char(34), char(0)), char(34)),
	 [STGRD] = concat(char(34), replace(cast([VBRK].[STGRD] as nvarchar(2)), char(34), char(0)), char(34)),
	 [VBTYP_EXT] = concat(char(34), replace(cast([VBRK].[VBTYP_EXT] as nvarchar(4)), char(34), char(0)), char(34)),
	 [DPC_REL] = concat(char(34), replace(cast([VBRK].[DPC_REL] as nvarchar(1)), char(34), char(0)), char(34)),
	 [MNDID] = concat(char(34), replace(cast([VBRK].[MNDID] as nvarchar(35)), char(34), char(0)), char(34)),
	 [PAY_TYPE] = concat(char(34), replace(cast([VBRK].[PAY_TYPE] as nvarchar(1)), char(34), char(0)), char(34)),
	 [SEPON] = concat(char(34), replace(cast([VBRK].[SEPON] as nvarchar(1)), char(34), char(0)), char(34)),
	 [MNDVG] = concat(char(34), replace(cast([VBRK].[MNDVG] as nvarchar(1)), char(34), char(0)), char(34)),
	 [SPPAYM] = concat(char(34), replace(cast([VBRK].[SPPAYM] as nvarchar(2)), char(34), char(0)), char(34)),
	 [SPPORD] = concat(char(34), replace(cast([VBRK].[SPPORD] as nvarchar(10)), char(34), char(0)), char(34))
from SAP_REPO.dbo.VBRK with(nolock)