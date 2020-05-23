select
	 [MANDT] = concat(char(34), replace(cast([VBAP].[MANDT] as nvarchar(3)), char(34), char(0)), char(34)),
	 [VBELN] = concat(char(34), replace(cast([VBAP].[VBELN] as nvarchar(10)), char(34), char(0)), char(34)),
	 [POSNR] = concat(char(34), replace(cast([VBAP].[POSNR] as nvarchar(6)), char(34), char(0)), char(34)),
	 [MATNR] = concat(char(34), replace(cast([VBAP].[MATNR] as nvarchar(18)), char(34), char(0)), char(34)),
	 [MATWA] = concat(char(34), replace(cast([VBAP].[MATWA] as nvarchar(18)), char(34), char(0)), char(34)),
	 [PMATN] = concat(char(34), replace(cast([VBAP].[PMATN] as nvarchar(18)), char(34), char(0)), char(34)),
	 [CHARG] = concat(char(34), replace(cast([VBAP].[CHARG] as nvarchar(10)), char(34), char(0)), char(34)),
	 [MATKL] = concat(char(34), replace(cast([VBAP].[MATKL] as nvarchar(9)), char(34), char(0)), char(34)),
	 [ARKTX] = concat(char(34), replace(cast([VBAP].[ARKTX] as nvarchar(40)), char(34), char(0)), char(34)),
	 [PSTYV] = concat(char(34), replace(cast([VBAP].[PSTYV] as nvarchar(4)), char(34), char(0)), char(34)),
	 [POSAR] = concat(char(34), replace(cast([VBAP].[POSAR] as nvarchar(1)), char(34), char(0)), char(34)),
	 [LFREL] = concat(char(34), replace(cast([VBAP].[LFREL] as nvarchar(1)), char(34), char(0)), char(34)),
	 [FKREL] = concat(char(34), replace(cast([VBAP].[FKREL] as nvarchar(1)), char(34), char(0)), char(34)),
	 [UEPOS] = concat(char(34), replace(cast([VBAP].[UEPOS] as nvarchar(6)), char(34), char(0)), char(34)),
	 [GRPOS] = concat(char(34), replace(cast([VBAP].[GRPOS] as nvarchar(6)), char(34), char(0)), char(34)),
	 [ABGRU] = concat(char(34), replace(cast([VBAP].[ABGRU] as nvarchar(2)), char(34), char(0)), char(34)),
	 [PRODH] = concat(char(34), replace(cast([VBAP].[PRODH] as nvarchar(18)), char(34), char(0)), char(34)),
	 [ZWERT] = cast([VBAP].[ZWERT] as varchar(36)),
	 [ZMENG] = cast([VBAP].[ZMENG] as varchar(36)),
	 [ZIEME] = concat(char(34), replace(cast([VBAP].[ZIEME] as nvarchar(3)), char(34), char(0)), char(34)),
	 [UMZIZ] = cast([VBAP].[UMZIZ] as varchar(36)),
	 [UMZIN] = cast([VBAP].[UMZIN] as varchar(36)),
	 [MEINS] = concat(char(34), replace(cast([VBAP].[MEINS] as nvarchar(3)), char(34), char(0)), char(34)),
	 [SMENG] = cast([VBAP].[SMENG] as varchar(36)),
	 [ABLFZ] = cast([VBAP].[ABLFZ] as varchar(36)),
	 [ABDAT] = concat(char(34), replace(cast([VBAP].[ABDAT] as nvarchar(8)), char(34), char(0)), char(34)),
	 [ABSFZ] = cast([VBAP].[ABSFZ] as varchar(36)),
	 [POSEX] = concat(char(34), replace(cast([VBAP].[POSEX] as nvarchar(6)), char(34), char(0)), char(34)),
	 [KDMAT] = concat(char(34), replace(cast([VBAP].[KDMAT] as nvarchar(35)), char(34), char(0)), char(34)),
	 [KBVER] = cast([VBAP].[KBVER] as varchar(36)),
	 [KEVER] = cast([VBAP].[KEVER] as varchar(36)),
	 [VKGRU] = concat(char(34), replace(cast([VBAP].[VKGRU] as nvarchar(3)), char(34), char(0)), char(34)),
	 [VKAUS] = concat(char(34), replace(cast([VBAP].[VKAUS] as nvarchar(3)), char(34), char(0)), char(34)),
	 [GRKOR] = concat(char(34), replace(cast([VBAP].[GRKOR] as nvarchar(3)), char(34), char(0)), char(34)),
	 [FMENG] = concat(char(34), replace(cast([VBAP].[FMENG] as nvarchar(1)), char(34), char(0)), char(34)),
	 [UEBTK] = concat(char(34), replace(cast([VBAP].[UEBTK] as nvarchar(1)), char(34), char(0)), char(34)),
	 [UEBTO] = cast([VBAP].[UEBTO] as varchar(36)),
	 [UNTTO] = cast([VBAP].[UNTTO] as varchar(36)),
	 [FAKSP] = concat(char(34), replace(cast([VBAP].[FAKSP] as nvarchar(2)), char(34), char(0)), char(34)),
	 [ATPKZ] = concat(char(34), replace(cast([VBAP].[ATPKZ] as nvarchar(1)), char(34), char(0)), char(34)),
	 [RKFKF] = concat(char(34), replace(cast([VBAP].[RKFKF] as nvarchar(1)), char(34), char(0)), char(34)),
	 [SPART] = concat(char(34), replace(cast([VBAP].[SPART] as nvarchar(2)), char(34), char(0)), char(34)),
	 [GSBER] = concat(char(34), replace(cast([VBAP].[GSBER] as nvarchar(4)), char(34), char(0)), char(34)),
	 [NETWR] = cast([VBAP].[NETWR] as varchar(36)),
	 [WAERK] = concat(char(34), replace(cast([VBAP].[WAERK] as nvarchar(5)), char(34), char(0)), char(34)),
	 [ANTLF] = cast([VBAP].[ANTLF] as varchar(36)),
	 [KZTLF] = concat(char(34), replace(cast([VBAP].[KZTLF] as nvarchar(1)), char(34), char(0)), char(34)),
	 [CHSPL] = concat(char(34), replace(cast([VBAP].[CHSPL] as nvarchar(1)), char(34), char(0)), char(34)),
	 [KWMENG] = cast([VBAP].[KWMENG] as varchar(36)),
	 [LSMENG] = cast([VBAP].[LSMENG] as varchar(36)),
	 [KBMENG] = cast([VBAP].[KBMENG] as varchar(36)),
	 [KLMENG] = cast([VBAP].[KLMENG] as varchar(36)),
	 [VRKME] = concat(char(34), replace(cast([VBAP].[VRKME] as nvarchar(3)), char(34), char(0)), char(34)),
	 [UMVKZ] = cast([VBAP].[UMVKZ] as varchar(36)),
	 [UMVKN] = cast([VBAP].[UMVKN] as varchar(36)),
	 [BRGEW] = cast([VBAP].[BRGEW] as varchar(36)),
	 [NTGEW] = cast([VBAP].[NTGEW] as varchar(36)),
	 [GEWEI] = concat(char(34), replace(cast([VBAP].[GEWEI] as nvarchar(3)), char(34), char(0)), char(34)),
	 [VOLUM] = cast([VBAP].[VOLUM] as varchar(36)),
	 [VOLEH] = concat(char(34), replace(cast([VBAP].[VOLEH] as nvarchar(3)), char(34), char(0)), char(34)),
	 [VBELV] = concat(char(34), replace(cast([VBAP].[VBELV] as nvarchar(10)), char(34), char(0)), char(34)),
	 [POSNV] = concat(char(34), replace(cast([VBAP].[POSNV] as nvarchar(6)), char(34), char(0)), char(34)),
	 [VGBEL] = concat(char(34), replace(cast([VBAP].[VGBEL] as nvarchar(10)), char(34), char(0)), char(34)),
	 [VGPOS] = concat(char(34), replace(cast([VBAP].[VGPOS] as nvarchar(6)), char(34), char(0)), char(34)),
	 [VOREF] = concat(char(34), replace(cast([VBAP].[VOREF] as nvarchar(1)), char(34), char(0)), char(34)),
	 [UPFLU] = concat(char(34), replace(cast([VBAP].[UPFLU] as nvarchar(1)), char(34), char(0)), char(34)),
	 [ERLRE] = concat(char(34), replace(cast([VBAP].[ERLRE] as nvarchar(1)), char(34), char(0)), char(34)),
	 [LPRIO] = concat(char(34), replace(cast([VBAP].[LPRIO] as nvarchar(2)), char(34), char(0)), char(34)),
	 [WERKS] = concat(char(34), replace(cast([VBAP].[WERKS] as nvarchar(4)), char(34), char(0)), char(34)),
	 [LGORT] = concat(char(34), replace(cast([VBAP].[LGORT] as nvarchar(4)), char(34), char(0)), char(34)),
	 [VSTEL] = concat(char(34), replace(cast([VBAP].[VSTEL] as nvarchar(4)), char(34), char(0)), char(34)),
	 [ROUTE] = concat(char(34), replace(cast([VBAP].[ROUTE] as nvarchar(6)), char(34), char(0)), char(34)),
	 [STKEY] = concat(char(34), replace(cast([VBAP].[STKEY] as nvarchar(1)), char(34), char(0)), char(34)),
	 [STDAT] = concat(char(34), replace(cast([VBAP].[STDAT] as nvarchar(8)), char(34), char(0)), char(34)),
	 [STLNR] = concat(char(34), replace(cast([VBAP].[STLNR] as nvarchar(8)), char(34), char(0)), char(34)),
	 [STPOS] = cast([VBAP].[STPOS] as varchar(36)),
	 [AWAHR] = concat(char(34), replace(cast([VBAP].[AWAHR] as nvarchar(3)), char(34), char(0)), char(34)),
	 [ERDAT] = concat(char(34), replace(cast([VBAP].[ERDAT] as nvarchar(8)), char(34), char(0)), char(34)),
	 [ERNAM] = concat(char(34), replace(cast([VBAP].[ERNAM] as nvarchar(12)), char(34), char(0)), char(34)),
	 [ERZET] = concat(char(34), replace(cast([VBAP].[ERZET] as nvarchar(6)), char(34), char(0)), char(34)),
	 [TAXM1] = concat(char(34), replace(cast([VBAP].[TAXM1] as nvarchar(1)), char(34), char(0)), char(34)),
	 [TAXM2] = concat(char(34), replace(cast([VBAP].[TAXM2] as nvarchar(1)), char(34), char(0)), char(34)),
	 [TAXM3] = concat(char(34), replace(cast([VBAP].[TAXM3] as nvarchar(1)), char(34), char(0)), char(34)),
	 [TAXM4] = concat(char(34), replace(cast([VBAP].[TAXM4] as nvarchar(1)), char(34), char(0)), char(34)),
	 [TAXM5] = concat(char(34), replace(cast([VBAP].[TAXM5] as nvarchar(1)), char(34), char(0)), char(34)),
	 [TAXM6] = concat(char(34), replace(cast([VBAP].[TAXM6] as nvarchar(1)), char(34), char(0)), char(34)),
	 [TAXM7] = concat(char(34), replace(cast([VBAP].[TAXM7] as nvarchar(1)), char(34), char(0)), char(34)),
	 [TAXM8] = concat(char(34), replace(cast([VBAP].[TAXM8] as nvarchar(1)), char(34), char(0)), char(34)),
	 [TAXM9] = concat(char(34), replace(cast([VBAP].[TAXM9] as nvarchar(1)), char(34), char(0)), char(34)),
	 [VBEAF] = cast([VBAP].[VBEAF] as varchar(36)),
	 [VBEAV] = cast([VBAP].[VBEAV] as varchar(36)),
	 [VGREF] = concat(char(34), replace(cast([VBAP].[VGREF] as nvarchar(1)), char(34), char(0)), char(34)),
	 [NETPR] = cast([VBAP].[NETPR] as varchar(36)),
	 [KPEIN] = cast([VBAP].[KPEIN] as varchar(36)),
	 [KMEIN] = concat(char(34), replace(cast([VBAP].[KMEIN] as nvarchar(3)), char(34), char(0)), char(34)),
	 [SHKZG] = concat(char(34), replace(cast([VBAP].[SHKZG] as nvarchar(1)), char(34), char(0)), char(34)),
	 [SKTOF] = concat(char(34), replace(cast([VBAP].[SKTOF] as nvarchar(1)), char(34), char(0)), char(34)),
	 [MTVFP] = concat(char(34), replace(cast([VBAP].[MTVFP] as nvarchar(2)), char(34), char(0)), char(34)),
	 [SUMBD] = concat(char(34), replace(cast([VBAP].[SUMBD] as nvarchar(1)), char(34), char(0)), char(34)),
	 [KONDM] = concat(char(34), replace(cast([VBAP].[KONDM] as nvarchar(2)), char(34), char(0)), char(34)),
	 [KTGRM] = concat(char(34), replace(cast([VBAP].[KTGRM] as nvarchar(2)), char(34), char(0)), char(34)),
	 [BONUS] = concat(char(34), replace(cast([VBAP].[BONUS] as nvarchar(2)), char(34), char(0)), char(34)),
	 [PROVG] = concat(char(34), replace(cast([VBAP].[PROVG] as nvarchar(2)), char(34), char(0)), char(34)),
	 [EANNR] = concat(char(34), replace(cast([VBAP].[EANNR] as nvarchar(13)), char(34), char(0)), char(34)),
	 [PRSOK] = concat(char(34), replace(cast([VBAP].[PRSOK] as nvarchar(1)), char(34), char(0)), char(34)),
	 [BWTAR] = concat(char(34), replace(cast([VBAP].[BWTAR] as nvarchar(10)), char(34), char(0)), char(34)),
	 [BWTEX] = concat(char(34), replace(cast([VBAP].[BWTEX] as nvarchar(1)), char(34), char(0)), char(34)),
	 [XCHPF] = concat(char(34), replace(cast([VBAP].[XCHPF] as nvarchar(1)), char(34), char(0)), char(34)),
	 [XCHAR] = concat(char(34), replace(cast([VBAP].[XCHAR] as nvarchar(1)), char(34), char(0)), char(34)),
	 [LFMNG] = cast([VBAP].[LFMNG] as varchar(36)),
	 [STAFO] = concat(char(34), replace(cast([VBAP].[STAFO] as nvarchar(6)), char(34), char(0)), char(34)),
	 [WAVWR] = cast([VBAP].[WAVWR] as varchar(36)),
	 [KZWI1] = cast([VBAP].[KZWI1] as varchar(36)),
	 [KZWI2] = cast([VBAP].[KZWI2] as varchar(36)),
	 [KZWI3] = cast([VBAP].[KZWI3] as varchar(36)),
	 [KZWI4] = cast([VBAP].[KZWI4] as varchar(36)),
	 [KZWI5] = cast([VBAP].[KZWI5] as varchar(36)),
	 [KZWI6] = cast([VBAP].[KZWI6] as varchar(36)),
	 [STCUR] = cast([VBAP].[STCUR] as varchar(36)),
	 [AEDAT] = concat(char(34), replace(cast([VBAP].[AEDAT] as nvarchar(8)), char(34), char(0)), char(34)),
	 [EAN11] = concat(char(34), replace(cast([VBAP].[EAN11] as nvarchar(18)), char(34), char(0)), char(34)),
	 [FIXMG] = concat(char(34), replace(cast([VBAP].[FIXMG] as nvarchar(1)), char(34), char(0)), char(34)),
	 [PRCTR] = concat(char(34), replace(cast([VBAP].[PRCTR] as nvarchar(10)), char(34), char(0)), char(34)),
	 [MVGR1] = concat(char(34), replace(cast([VBAP].[MVGR1] as nvarchar(3)), char(34), char(0)), char(34)),
	 [MVGR2] = concat(char(34), replace(cast([VBAP].[MVGR2] as nvarchar(3)), char(34), char(0)), char(34)),
	 [MVGR3] = concat(char(34), replace(cast([VBAP].[MVGR3] as nvarchar(3)), char(34), char(0)), char(34)),
	 [MVGR4] = concat(char(34), replace(cast([VBAP].[MVGR4] as nvarchar(3)), char(34), char(0)), char(34)),
	 [MVGR5] = concat(char(34), replace(cast([VBAP].[MVGR5] as nvarchar(3)), char(34), char(0)), char(34)),
	 [KMPMG] = cast([VBAP].[KMPMG] as varchar(36)),
	 [SUGRD] = concat(char(34), replace(cast([VBAP].[SUGRD] as nvarchar(4)), char(34), char(0)), char(34)),
	 [SOBKZ] = concat(char(34), replace(cast([VBAP].[SOBKZ] as nvarchar(1)), char(34), char(0)), char(34)),
	 [VPZUO] = concat(char(34), replace(cast([VBAP].[VPZUO] as nvarchar(1)), char(34), char(0)), char(34)),
	 [PAOBJNR] = concat(char(34), replace(cast([VBAP].[PAOBJNR] as nvarchar(10)), char(34), char(0)), char(34)),
	 [PS_PSP_PNR] = concat(char(34), replace(cast([VBAP].[PS_PSP_PNR] as nvarchar(8)), char(34), char(0)), char(34)),
	 [AUFNR] = concat(char(34), replace(cast([VBAP].[AUFNR] as nvarchar(12)), char(34), char(0)), char(34)),
	 [VPMAT] = concat(char(34), replace(cast([VBAP].[VPMAT] as nvarchar(18)), char(34), char(0)), char(34)),
	 [VPWRK] = concat(char(34), replace(cast([VBAP].[VPWRK] as nvarchar(4)), char(34), char(0)), char(34)),
	 [PRBME] = concat(char(34), replace(cast([VBAP].[PRBME] as nvarchar(3)), char(34), char(0)), char(34)),
	 [UMREF] = cast([VBAP].[UMREF] as varchar(36)),
	 [KNTTP] = concat(char(34), replace(cast([VBAP].[KNTTP] as nvarchar(1)), char(34), char(0)), char(34)),
	 [KZVBR] = concat(char(34), replace(cast([VBAP].[KZVBR] as nvarchar(1)), char(34), char(0)), char(34)),
	 [SERNR] = concat(char(34), replace(cast([VBAP].[SERNR] as nvarchar(8)), char(34), char(0)), char(34)),
	 [OBJNR] = concat(char(34), replace(cast([VBAP].[OBJNR] as nvarchar(22)), char(34), char(0)), char(34)),
	 [ABGRS] = concat(char(34), replace(cast([VBAP].[ABGRS] as nvarchar(6)), char(34), char(0)), char(34)),
	 [BEDAE] = concat(char(34), replace(cast([VBAP].[BEDAE] as nvarchar(4)), char(34), char(0)), char(34)),
	 [CMPRE] = cast([VBAP].[CMPRE] as varchar(36)),
	 [CMTFG] = concat(char(34), replace(cast([VBAP].[CMTFG] as nvarchar(1)), char(34), char(0)), char(34)),
	 [CMPNT] = concat(char(34), replace(cast([VBAP].[CMPNT] as nvarchar(1)), char(34), char(0)), char(34)),
	 [CMKUA] = cast([VBAP].[CMKUA] as varchar(36)),
	 [CUOBJ] = concat(char(34), replace(cast([VBAP].[CUOBJ] as nvarchar(18)), char(34), char(0)), char(34)),
	 [CUOBJ_CH] = concat(char(34), replace(cast([VBAP].[CUOBJ_CH] as nvarchar(18)), char(34), char(0)), char(34)),
	 [CEPOK] = concat(char(34), replace(cast([VBAP].[CEPOK] as nvarchar(1)), char(34), char(0)), char(34)),
	 [KOUPD] = concat(char(34), replace(cast([VBAP].[KOUPD] as nvarchar(1)), char(34), char(0)), char(34)),
	 [SERAIL] = concat(char(34), replace(cast([VBAP].[SERAIL] as nvarchar(4)), char(34), char(0)), char(34)),
	 [ANZSN] = cast([VBAP].[ANZSN] as varchar(36)),
	 [NACHL] = concat(char(34), replace(cast([VBAP].[NACHL] as nvarchar(1)), char(34), char(0)), char(34)),
	 [MAGRV] = concat(char(34), replace(cast([VBAP].[MAGRV] as nvarchar(4)), char(34), char(0)), char(34)),
	 [MPROK] = concat(char(34), replace(cast([VBAP].[MPROK] as nvarchar(1)), char(34), char(0)), char(34)),
	 [VGTYP] = concat(char(34), replace(cast([VBAP].[VGTYP] as nvarchar(1)), char(34), char(0)), char(34)),
	 [PROSA] = concat(char(34), replace(cast([VBAP].[PROSA] as nvarchar(1)), char(34), char(0)), char(34)),
	 [UEPVW] = concat(char(34), replace(cast([VBAP].[UEPVW] as nvarchar(1)), char(34), char(0)), char(34)),
	 [KALNR] = concat(char(34), replace(cast([VBAP].[KALNR] as nvarchar(12)), char(34), char(0)), char(34)),
	 [KLVAR] = concat(char(34), replace(cast([VBAP].[KLVAR] as nvarchar(4)), char(34), char(0)), char(34)),
	 [SPOSN] = concat(char(34), replace(cast([VBAP].[SPOSN] as nvarchar(4)), char(34), char(0)), char(34)),
	 [KOWRR] = concat(char(34), replace(cast([VBAP].[KOWRR] as nvarchar(1)), char(34), char(0)), char(34)),
	 [STADAT] = concat(char(34), replace(cast([VBAP].[STADAT] as nvarchar(8)), char(34), char(0)), char(34)),
	 [EXART] = concat(char(34), replace(cast([VBAP].[EXART] as nvarchar(2)), char(34), char(0)), char(34)),
	 [PREFE] = concat(char(34), replace(cast([VBAP].[PREFE] as nvarchar(1)), char(34), char(0)), char(34)),
	 [KNUMH] = concat(char(34), replace(cast([VBAP].[KNUMH] as nvarchar(10)), char(34), char(0)), char(34)),
	 [CLINT] = concat(char(34), replace(cast([VBAP].[CLINT] as nvarchar(10)), char(34), char(0)), char(34)),
	 [CHMVS] = concat(char(34), replace(cast([VBAP].[CHMVS] as nvarchar(3)), char(34), char(0)), char(34)),
	 [STLTY] = concat(char(34), replace(cast([VBAP].[STLTY] as nvarchar(1)), char(34), char(0)), char(34)),
	 [STLKN] = concat(char(34), replace(cast([VBAP].[STLKN] as nvarchar(8)), char(34), char(0)), char(34)),
	 [STPOZ] = concat(char(34), replace(cast([VBAP].[STPOZ] as nvarchar(8)), char(34), char(0)), char(34)),
	 [STMAN] = concat(char(34), replace(cast([VBAP].[STMAN] as nvarchar(1)), char(34), char(0)), char(34)),
	 [ZSCHL_K] = concat(char(34), replace(cast([VBAP].[ZSCHL_K] as nvarchar(6)), char(34), char(0)), char(34)),
	 [KALSM_K] = concat(char(34), replace(cast([VBAP].[KALSM_K] as nvarchar(6)), char(34), char(0)), char(34)),
	 [KALVAR] = concat(char(34), replace(cast([VBAP].[KALVAR] as nvarchar(4)), char(34), char(0)), char(34)),
	 [KOSCH] = concat(char(34), replace(cast([VBAP].[KOSCH] as nvarchar(18)), char(34), char(0)), char(34)),
	 [UPMAT] = concat(char(34), replace(cast([VBAP].[UPMAT] as nvarchar(18)), char(34), char(0)), char(34)),
	 [UKONM] = concat(char(34), replace(cast([VBAP].[UKONM] as nvarchar(2)), char(34), char(0)), char(34)),
	 [MFRGR] = concat(char(34), replace(cast([VBAP].[MFRGR] as nvarchar(8)), char(34), char(0)), char(34)),
	 [PLAVO] = concat(char(34), replace(cast([VBAP].[PLAVO] as nvarchar(4)), char(34), char(0)), char(34)),
	 [KANNR] = concat(char(34), replace(cast([VBAP].[KANNR] as nvarchar(35)), char(34), char(0)), char(34)),
	 [CMPRE_FLT] = cast([VBAP].[CMPRE_FLT] as varchar(36)),
	 [ABFOR] = concat(char(34), replace(cast([VBAP].[ABFOR] as nvarchar(2)), char(34), char(0)), char(34)),
	 [ABGES] = cast([VBAP].[ABGES] as varchar(36)),
	 [J_1BCFOP] = concat(char(34), replace(cast([VBAP].[J_1BCFOP] as nvarchar(10)), char(34), char(0)), char(34)),
	 [J_1BTAXLW1] = concat(char(34), replace(cast([VBAP].[J_1BTAXLW1] as nvarchar(3)), char(34), char(0)), char(34)),
	 [J_1BTAXLW2] = concat(char(34), replace(cast([VBAP].[J_1BTAXLW2] as nvarchar(3)), char(34), char(0)), char(34)),
	 [J_1BTXSDC] = concat(char(34), replace(cast([VBAP].[J_1BTXSDC] as nvarchar(2)), char(34), char(0)), char(34)),
	 [WKTNR] = concat(char(34), replace(cast([VBAP].[WKTNR] as nvarchar(10)), char(34), char(0)), char(34)),
	 [WKTPS] = concat(char(34), replace(cast([VBAP].[WKTPS] as nvarchar(6)), char(34), char(0)), char(34)),
	 [SKOPF] = concat(char(34), replace(cast([VBAP].[SKOPF] as nvarchar(18)), char(34), char(0)), char(34)),
	 [KZBWS] = concat(char(34), replace(cast([VBAP].[KZBWS] as nvarchar(1)), char(34), char(0)), char(34)),
	 [WGRU1] = concat(char(34), replace(cast([VBAP].[WGRU1] as nvarchar(18)), char(34), char(0)), char(34)),
	 [WGRU2] = concat(char(34), replace(cast([VBAP].[WGRU2] as nvarchar(18)), char(34), char(0)), char(34)),
	 [KNUMA_PI] = concat(char(34), replace(cast([VBAP].[KNUMA_PI] as nvarchar(10)), char(34), char(0)), char(34)),
	 [KNUMA_AG] = concat(char(34), replace(cast([VBAP].[KNUMA_AG] as nvarchar(10)), char(34), char(0)), char(34)),
	 [KZFME] = concat(char(34), replace(cast([VBAP].[KZFME] as nvarchar(1)), char(34), char(0)), char(34)),
	 [LSTANR] = concat(char(34), replace(cast([VBAP].[LSTANR] as nvarchar(1)), char(34), char(0)), char(34)),
	 [TECHS] = concat(char(34), replace(cast([VBAP].[TECHS] as nvarchar(12)), char(34), char(0)), char(34)),
	 [MWSBP] = cast([VBAP].[MWSBP] as varchar(36)),
	 [BERID] = concat(char(34), replace(cast([VBAP].[BERID] as nvarchar(10)), char(34), char(0)), char(34)),
	 [PCTRF] = concat(char(34), replace(cast([VBAP].[PCTRF] as nvarchar(10)), char(34), char(0)), char(34)),
	 [LOGSYS_EXT] = concat(char(34), replace(cast([VBAP].[LOGSYS_EXT] as nvarchar(10)), char(34), char(0)), char(34)),
	 [J_1BTAXLW3] = concat(char(34), replace(cast([VBAP].[J_1BTAXLW3] as nvarchar(3)), char(34), char(0)), char(34)),
	 [J_1BTAXLW4] = concat(char(34), replace(cast([VBAP].[J_1BTAXLW4] as nvarchar(3)), char(34), char(0)), char(34)),
	 [J_1BTAXLW5] = concat(char(34), replace(cast([VBAP].[J_1BTAXLW5] as nvarchar(3)), char(34), char(0)), char(34)),
	 [STOCKLOC] = concat(char(34), replace(cast([VBAP].[STOCKLOC] as nvarchar(20)), char(34), char(0)), char(34)),
	 [SLOCTYPE] = concat(char(34), replace(cast([VBAP].[SLOCTYPE] as nvarchar(4)), char(34), char(0)), char(34)),
	 [MSR_RET_REASON] = concat(char(34), replace(cast([VBAP].[MSR_RET_REASON] as nvarchar(3)), char(34), char(0)), char(34)),
	 [MSR_REFUND_CODE] = concat(char(34), replace(cast([VBAP].[MSR_REFUND_CODE] as nvarchar(3)), char(34), char(0)), char(34)),
	 [MSR_APPROV_BLOCK] = concat(char(34), replace(cast([VBAP].[MSR_APPROV_BLOCK] as nvarchar(1)), char(34), char(0)), char(34)),
	 [NRAB_KNUMH] = concat(char(34), replace(cast([VBAP].[NRAB_KNUMH] as nvarchar(10)), char(34), char(0)), char(34)),
	 [TRMRISK_RELEVANT] = concat(char(34), replace(cast([VBAP].[TRMRISK_RELEVANT] as nvarchar(2)), char(34), char(0)), char(34)),
	 [HANDOVERLOC] = concat(char(34), replace(cast([VBAP].[HANDOVERLOC] as nvarchar(10)), char(34), char(0)), char(34)),
	 [HANDOVERDATE] = concat(char(34), replace(cast([VBAP].[HANDOVERDATE] as nvarchar(8)), char(34), char(0)), char(34)),
	 [HANDOVERTIME] = concat(char(34), replace(cast([VBAP].[HANDOVERTIME] as nvarchar(6)), char(34), char(0)), char(34)),
	 [ZZ_BILLABLE] = concat(char(34), replace(cast([VBAP].[ZZ_BILLABLE] as nvarchar(1)), char(34), char(0)), char(34)),
	 [TC_AUT_DET] = concat(char(34), replace(cast([VBAP].[TC_AUT_DET] as nvarchar(2)), char(34), char(0)), char(34)),
	 [MANUAL_TC_REASON] = concat(char(34), replace(cast([VBAP].[MANUAL_TC_REASON] as nvarchar(2)), char(34), char(0)), char(34)),
	 [FISCAL_INCENTIVE] = concat(char(34), replace(cast([VBAP].[FISCAL_INCENTIVE] as nvarchar(4)), char(34), char(0)), char(34)),
	 [TAX_SUBJECT_ST] = concat(char(34), replace(cast([VBAP].[TAX_SUBJECT_ST] as nvarchar(1)), char(34), char(0)), char(34)),
	 [FISCAL_INCENTIVE_ID] = concat(char(34), replace(cast([VBAP].[FISCAL_INCENTIVE_ID] as nvarchar(4)), char(34), char(0)), char(34)),
	 [SPCSTO] = concat(char(34), replace(cast([VBAP].[SPCSTO] as nvarchar(2)), char(34), char(0)), char(34)),
	 [/BEV1/SRFUND] = concat(char(34), replace(cast([VBAP].[/BEV1/SRFUND] as nvarchar(2)), char(34), char(0)), char(34)),
	 [AUFPL_OLC] = concat(char(34), replace(cast([VBAP].[AUFPL_OLC] as nvarchar(10)), char(34), char(0)), char(34)),
	 [APLZL_OLC] = concat(char(34), replace(cast([VBAP].[APLZL_OLC] as nvarchar(8)), char(34), char(0)), char(34)),
	 [FERC_IND] = concat(char(34), replace(cast([VBAP].[FERC_IND] as nvarchar(4)), char(34), char(0)), char(34)),
	 [KOSTL] = concat(char(34), replace(cast([VBAP].[KOSTL] as nvarchar(10)), char(34), char(0)), char(34)),
	 [FONDS] = concat(char(34), replace(cast([VBAP].[FONDS] as nvarchar(10)), char(34), char(0)), char(34)),
	 [FISTL] = concat(char(34), replace(cast([VBAP].[FISTL] as nvarchar(16)), char(34), char(0)), char(34)),
	 [FKBER] = concat(char(34), replace(cast([VBAP].[FKBER] as nvarchar(16)), char(34), char(0)), char(34)),
	 [GRANT_NBR] = concat(char(34), replace(cast([VBAP].[GRANT_NBR] as nvarchar(20)), char(34), char(0)), char(34)),
	 [IUID_RELEVANT] = concat(char(34), replace(cast([VBAP].[IUID_RELEVANT] as nvarchar(1)), char(34), char(0)), char(34)),
	 [MILL_SE_GPOSN] = concat(char(34), replace(cast([VBAP].[MILL_SE_GPOSN] as nvarchar(6)), char(34), char(0)), char(34)),
	 [PRS_OBJNR] = concat(char(34), replace(cast([VBAP].[PRS_OBJNR] as nvarchar(22)), char(34), char(0)), char(34)),
	 [PRS_SD_SPSNR] = concat(char(34), replace(cast([VBAP].[PRS_SD_SPSNR] as nvarchar(8)), char(34), char(0)), char(34)),
	 [PRS_WORK_PERIOD] = concat(char(34), replace(cast([VBAP].[PRS_WORK_PERIOD] as nvarchar(7)), char(34), char(0)), char(34)),
	 [PARGB] = concat(char(34), replace(cast([VBAP].[PARGB] as nvarchar(4)), char(34), char(0)), char(34)),
	 [AUFPL_OAA] = concat(char(34), replace(cast([VBAP].[AUFPL_OAA] as nvarchar(10)), char(34), char(0)), char(34)),
	 [APLZL_OAA] = concat(char(34), replace(cast([VBAP].[APLZL_OAA] as nvarchar(8)), char(34), char(0)), char(34)),
	 [ARSNUM] = concat(char(34), replace(cast([VBAP].[ARSNUM] as nvarchar(10)), char(34), char(0)), char(34)),
	 [ARSPOS] = concat(char(34), replace(cast([VBAP].[ARSPOS] as nvarchar(4)), char(34), char(0)), char(34)),
	 [WTYSC_CLMITEM] = concat(char(34), replace(cast([VBAP].[WTYSC_CLMITEM] as nvarchar(16)), char(34), char(0)), char(34)),
	 [ZITM_VAL_IND] = concat(char(34), replace(cast([VBAP].[ZITM_VAL_IND] as nvarchar(1)), char(34), char(0)), char(34)),
	 [ZITM_INTERCO] = concat(char(34), replace(cast([VBAP].[ZITM_INTERCO] as nvarchar(1)), char(34), char(0)), char(34)),
	 [ZWAR_PR] = cast([VBAP].[ZWAR_PR] as varchar(36)),
	 [ZWAR_ST_DT] = concat(char(34), replace(cast([VBAP].[ZWAR_ST_DT] as nvarchar(8)), char(34), char(0)), char(34)),
	 [ZWAR_ED_DT] = concat(char(34), replace(cast([VBAP].[ZWAR_ED_DT] as nvarchar(8)), char(34), char(0)), char(34))
from SAP_REPO.dbo.VBAP