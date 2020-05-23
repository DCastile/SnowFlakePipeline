select
	 [MANDT] = concat(char(34), replace(cast([MSEG].[MANDT] as nvarchar(3)), char(34), char(0)), char(34)),
	 [MBLNR] = concat(char(34), replace(cast([MSEG].[MBLNR] as nvarchar(10)), char(34), char(0)), char(34)),
	 [MJAHR] = concat(char(34), replace(cast([MSEG].[MJAHR] as nvarchar(4)), char(34), char(0)), char(34)),
	 [ZEILE] = concat(char(34), replace(cast([MSEG].[ZEILE] as nvarchar(4)), char(34), char(0)), char(34)),
	 [LINE_ID] = concat(char(34), replace(cast([MSEG].[LINE_ID] as nvarchar(6)), char(34), char(0)), char(34)),
	 [PARENT_ID] = concat(char(34), replace(cast([MSEG].[PARENT_ID] as nvarchar(6)), char(34), char(0)), char(34)),
	 [LINE_DEPTH] = concat(char(34), replace(cast([MSEG].[LINE_DEPTH] as nvarchar(2)), char(34), char(0)), char(34)),
	 [MAA_URZEI] = concat(char(34), replace(cast([MSEG].[MAA_URZEI] as nvarchar(4)), char(34), char(0)), char(34)),
	 [BWART] = concat(char(34), replace(cast([MSEG].[BWART] as nvarchar(3)), char(34), char(0)), char(34)),
	 [XAUTO] = concat(char(34), replace(cast([MSEG].[XAUTO] as nvarchar(1)), char(34), char(0)), char(34)),
	 [MATNR] = concat(char(34), replace(cast([MSEG].[MATNR] as nvarchar(18)), char(34), char(0)), char(34)),
	 [WERKS] = concat(char(34), replace(cast([MSEG].[WERKS] as nvarchar(4)), char(34), char(0)), char(34)),
	 [LGORT] = concat(char(34), replace(cast([MSEG].[LGORT] as nvarchar(4)), char(34), char(0)), char(34)),
	 [CHARG] = concat(char(34), replace(cast([MSEG].[CHARG] as nvarchar(10)), char(34), char(0)), char(34)),
	 [INSMK] = concat(char(34), replace(cast([MSEG].[INSMK] as nvarchar(1)), char(34), char(0)), char(34)),
	 [ZUSCH] = concat(char(34), replace(cast([MSEG].[ZUSCH] as nvarchar(1)), char(34), char(0)), char(34)),
	 [ZUSTD] = concat(char(34), replace(cast([MSEG].[ZUSTD] as nvarchar(1)), char(34), char(0)), char(34)),
	 [SOBKZ] = concat(char(34), replace(cast([MSEG].[SOBKZ] as nvarchar(1)), char(34), char(0)), char(34)),
	 [LIFNR] = concat(char(34), replace(cast([MSEG].[LIFNR] as nvarchar(10)), char(34), char(0)), char(34)),
	 [KUNNR] = concat(char(34), replace(cast([MSEG].[KUNNR] as nvarchar(10)), char(34), char(0)), char(34)),
	 [KDAUF] = concat(char(34), replace(cast([MSEG].[KDAUF] as nvarchar(10)), char(34), char(0)), char(34)),
	 [KDPOS] = concat(char(34), replace(cast([MSEG].[KDPOS] as nvarchar(6)), char(34), char(0)), char(34)),
	 [KDEIN] = concat(char(34), replace(cast([MSEG].[KDEIN] as nvarchar(4)), char(34), char(0)), char(34)),
	 [PLPLA] = concat(char(34), replace(cast([MSEG].[PLPLA] as nvarchar(10)), char(34), char(0)), char(34)),
	 [SHKZG] = concat(char(34), replace(cast([MSEG].[SHKZG] as nvarchar(1)), char(34), char(0)), char(34)),
	 [WAERS] = concat(char(34), replace(cast([MSEG].[WAERS] as nvarchar(5)), char(34), char(0)), char(34)),
	 [DMBTR] = cast([MSEG].[DMBTR] as varchar(36)),
	 [BNBTR] = cast([MSEG].[BNBTR] as varchar(36)),
	 [BUALT] = cast([MSEG].[BUALT] as varchar(36)),
	 [SHKUM] = concat(char(34), replace(cast([MSEG].[SHKUM] as nvarchar(1)), char(34), char(0)), char(34)),
	 [DMBUM] = cast([MSEG].[DMBUM] as varchar(36)),
	 [BWTAR] = concat(char(34), replace(cast([MSEG].[BWTAR] as nvarchar(10)), char(34), char(0)), char(34)),
	 [MENGE] = cast([MSEG].[MENGE] as varchar(36)),
	 [MEINS] = concat(char(34), replace(cast([MSEG].[MEINS] as nvarchar(3)), char(34), char(0)), char(34)),
	 [ERFMG] = cast([MSEG].[ERFMG] as varchar(36)),
	 [ERFME] = concat(char(34), replace(cast([MSEG].[ERFME] as nvarchar(3)), char(34), char(0)), char(34)),
	 [BPMNG] = cast([MSEG].[BPMNG] as varchar(36)),
	 [BPRME] = concat(char(34), replace(cast([MSEG].[BPRME] as nvarchar(3)), char(34), char(0)), char(34)),
	 [EBELN] = concat(char(34), replace(cast([MSEG].[EBELN] as nvarchar(10)), char(34), char(0)), char(34)),
	 [EBELP] = concat(char(34), replace(cast([MSEG].[EBELP] as nvarchar(5)), char(34), char(0)), char(34)),
	 [LFBJA] = concat(char(34), replace(cast([MSEG].[LFBJA] as nvarchar(4)), char(34), char(0)), char(34)),
	 [LFBNR] = concat(char(34), replace(cast([MSEG].[LFBNR] as nvarchar(10)), char(34), char(0)), char(34)),
	 [LFPOS] = concat(char(34), replace(cast([MSEG].[LFPOS] as nvarchar(4)), char(34), char(0)), char(34)),
	 [SJAHR] = concat(char(34), replace(cast([MSEG].[SJAHR] as nvarchar(4)), char(34), char(0)), char(34)),
	 [SMBLN] = concat(char(34), replace(cast([MSEG].[SMBLN] as nvarchar(10)), char(34), char(0)), char(34)),
	 [SMBLP] = concat(char(34), replace(cast([MSEG].[SMBLP] as nvarchar(4)), char(34), char(0)), char(34)),
	 [ELIKZ] = concat(char(34), replace(cast([MSEG].[ELIKZ] as nvarchar(1)), char(34), char(0)), char(34)),
	 [SGTXT] = concat(char(34), replace(cast([MSEG].[SGTXT] as nvarchar(50)), char(34), char(0)), char(34)),
	 [EQUNR] = concat(char(34), replace(cast([MSEG].[EQUNR] as nvarchar(18)), char(34), char(0)), char(34)),
	 [WEMPF] = concat(char(34), replace(cast([MSEG].[WEMPF] as nvarchar(12)), char(34), char(0)), char(34)),
	 [ABLAD] = concat(char(34), replace(cast([MSEG].[ABLAD] as nvarchar(25)), char(34), char(0)), char(34)),
	 [GSBER] = concat(char(34), replace(cast([MSEG].[GSBER] as nvarchar(4)), char(34), char(0)), char(34)),
	 [KOKRS] = concat(char(34), replace(cast([MSEG].[KOKRS] as nvarchar(4)), char(34), char(0)), char(34)),
	 [PARGB] = concat(char(34), replace(cast([MSEG].[PARGB] as nvarchar(4)), char(34), char(0)), char(34)),
	 [PARBU] = concat(char(34), replace(cast([MSEG].[PARBU] as nvarchar(4)), char(34), char(0)), char(34)),
	 [KOSTL] = concat(char(34), replace(cast([MSEG].[KOSTL] as nvarchar(10)), char(34), char(0)), char(34)),
	 [PROJN] = concat(char(34), replace(cast([MSEG].[PROJN] as nvarchar(16)), char(34), char(0)), char(34)),
	 [AUFNR] = concat(char(34), replace(cast([MSEG].[AUFNR] as nvarchar(12)), char(34), char(0)), char(34)),
	 [ANLN1] = concat(char(34), replace(cast([MSEG].[ANLN1] as nvarchar(12)), char(34), char(0)), char(34)),
	 [ANLN2] = concat(char(34), replace(cast([MSEG].[ANLN2] as nvarchar(4)), char(34), char(0)), char(34)),
	 [XSKST] = concat(char(34), replace(cast([MSEG].[XSKST] as nvarchar(1)), char(34), char(0)), char(34)),
	 [XSAUF] = concat(char(34), replace(cast([MSEG].[XSAUF] as nvarchar(1)), char(34), char(0)), char(34)),
	 [XSPRO] = concat(char(34), replace(cast([MSEG].[XSPRO] as nvarchar(1)), char(34), char(0)), char(34)),
	 [XSERG] = concat(char(34), replace(cast([MSEG].[XSERG] as nvarchar(1)), char(34), char(0)), char(34)),
	 [GJAHR] = concat(char(34), replace(cast([MSEG].[GJAHR] as nvarchar(4)), char(34), char(0)), char(34)),
	 [XRUEM] = concat(char(34), replace(cast([MSEG].[XRUEM] as nvarchar(1)), char(34), char(0)), char(34)),
	 [XRUEJ] = concat(char(34), replace(cast([MSEG].[XRUEJ] as nvarchar(1)), char(34), char(0)), char(34)),
	 [BUKRS] = concat(char(34), replace(cast([MSEG].[BUKRS] as nvarchar(4)), char(34), char(0)), char(34)),
	 [BELNR] = concat(char(34), replace(cast([MSEG].[BELNR] as nvarchar(10)), char(34), char(0)), char(34)),
	 [BUZEI] = concat(char(34), replace(cast([MSEG].[BUZEI] as nvarchar(3)), char(34), char(0)), char(34)),
	 [BELUM] = concat(char(34), replace(cast([MSEG].[BELUM] as nvarchar(10)), char(34), char(0)), char(34)),
	 [BUZUM] = concat(char(34), replace(cast([MSEG].[BUZUM] as nvarchar(3)), char(34), char(0)), char(34)),
	 [RSNUM] = concat(char(34), replace(cast([MSEG].[RSNUM] as nvarchar(10)), char(34), char(0)), char(34)),
	 [RSPOS] = concat(char(34), replace(cast([MSEG].[RSPOS] as nvarchar(4)), char(34), char(0)), char(34)),
	 [KZEAR] = concat(char(34), replace(cast([MSEG].[KZEAR] as nvarchar(1)), char(34), char(0)), char(34)),
	 [PBAMG] = cast([MSEG].[PBAMG] as varchar(36)),
	 [KZSTR] = concat(char(34), replace(cast([MSEG].[KZSTR] as nvarchar(1)), char(34), char(0)), char(34)),
	 [UMMAT] = concat(char(34), replace(cast([MSEG].[UMMAT] as nvarchar(18)), char(34), char(0)), char(34)),
	 [UMWRK] = concat(char(34), replace(cast([MSEG].[UMWRK] as nvarchar(4)), char(34), char(0)), char(34)),
	 [UMLGO] = concat(char(34), replace(cast([MSEG].[UMLGO] as nvarchar(4)), char(34), char(0)), char(34)),
	 [UMCHA] = concat(char(34), replace(cast([MSEG].[UMCHA] as nvarchar(10)), char(34), char(0)), char(34)),
	 [UMZST] = concat(char(34), replace(cast([MSEG].[UMZST] as nvarchar(1)), char(34), char(0)), char(34)),
	 [UMZUS] = concat(char(34), replace(cast([MSEG].[UMZUS] as nvarchar(1)), char(34), char(0)), char(34)),
	 [UMBAR] = concat(char(34), replace(cast([MSEG].[UMBAR] as nvarchar(10)), char(34), char(0)), char(34)),
	 [UMSOK] = concat(char(34), replace(cast([MSEG].[UMSOK] as nvarchar(1)), char(34), char(0)), char(34)),
	 [KZBEW] = concat(char(34), replace(cast([MSEG].[KZBEW] as nvarchar(1)), char(34), char(0)), char(34)),
	 [KZVBR] = concat(char(34), replace(cast([MSEG].[KZVBR] as nvarchar(1)), char(34), char(0)), char(34)),
	 [KZZUG] = concat(char(34), replace(cast([MSEG].[KZZUG] as nvarchar(1)), char(34), char(0)), char(34)),
	 [WEUNB] = concat(char(34), replace(cast([MSEG].[WEUNB] as nvarchar(1)), char(34), char(0)), char(34)),
	 [PALAN] = cast([MSEG].[PALAN] as varchar(36)),
	 [LGNUM] = concat(char(34), replace(cast([MSEG].[LGNUM] as nvarchar(3)), char(34), char(0)), char(34)),
	 [LGTYP] = concat(char(34), replace(cast([MSEG].[LGTYP] as nvarchar(3)), char(34), char(0)), char(34)),
	 [LGPLA] = concat(char(34), replace(cast([MSEG].[LGPLA] as nvarchar(10)), char(34), char(0)), char(34)),
	 [BESTQ] = concat(char(34), replace(cast([MSEG].[BESTQ] as nvarchar(1)), char(34), char(0)), char(34)),
	 [BWLVS] = concat(char(34), replace(cast([MSEG].[BWLVS] as nvarchar(3)), char(34), char(0)), char(34)),
	 [TBNUM] = concat(char(34), replace(cast([MSEG].[TBNUM] as nvarchar(10)), char(34), char(0)), char(34)),
	 [TBPOS] = concat(char(34), replace(cast([MSEG].[TBPOS] as nvarchar(4)), char(34), char(0)), char(34)),
	 [XBLVS] = concat(char(34), replace(cast([MSEG].[XBLVS] as nvarchar(1)), char(34), char(0)), char(34)),
	 [VSCHN] = concat(char(34), replace(cast([MSEG].[VSCHN] as nvarchar(1)), char(34), char(0)), char(34)),
	 [NSCHN] = concat(char(34), replace(cast([MSEG].[NSCHN] as nvarchar(1)), char(34), char(0)), char(34)),
	 [DYPLA] = concat(char(34), replace(cast([MSEG].[DYPLA] as nvarchar(1)), char(34), char(0)), char(34)),
	 [UBNUM] = concat(char(34), replace(cast([MSEG].[UBNUM] as nvarchar(10)), char(34), char(0)), char(34)),
	 [TBPRI] = concat(char(34), replace(cast([MSEG].[TBPRI] as nvarchar(1)), char(34), char(0)), char(34)),
	 [TANUM] = concat(char(34), replace(cast([MSEG].[TANUM] as nvarchar(10)), char(34), char(0)), char(34)),
	 [WEANZ] = concat(char(34), replace(cast([MSEG].[WEANZ] as nvarchar(3)), char(34), char(0)), char(34)),
	 [GRUND] = concat(char(34), replace(cast([MSEG].[GRUND] as nvarchar(4)), char(34), char(0)), char(34)),
	 [EVERS] = concat(char(34), replace(cast([MSEG].[EVERS] as nvarchar(2)), char(34), char(0)), char(34)),
	 [EVERE] = concat(char(34), replace(cast([MSEG].[EVERE] as nvarchar(2)), char(34), char(0)), char(34)),
	 [IMKEY] = concat(char(34), replace(cast([MSEG].[IMKEY] as nvarchar(8)), char(34), char(0)), char(34)),
	 [KSTRG] = concat(char(34), replace(cast([MSEG].[KSTRG] as nvarchar(12)), char(34), char(0)), char(34)),
	 [PAOBJNR] = concat(char(34), replace(cast([MSEG].[PAOBJNR] as nvarchar(10)), char(34), char(0)), char(34)),
	 [PRCTR] = concat(char(34), replace(cast([MSEG].[PRCTR] as nvarchar(10)), char(34), char(0)), char(34)),
	 [PS_PSP_PNR] = concat(char(34), replace(cast([MSEG].[PS_PSP_PNR] as nvarchar(8)), char(34), char(0)), char(34)),
	 [NPLNR] = concat(char(34), replace(cast([MSEG].[NPLNR] as nvarchar(12)), char(34), char(0)), char(34)),
	 [AUFPL] = concat(char(34), replace(cast([MSEG].[AUFPL] as nvarchar(10)), char(34), char(0)), char(34)),
	 [APLZL] = concat(char(34), replace(cast([MSEG].[APLZL] as nvarchar(8)), char(34), char(0)), char(34)),
	 [AUFPS] = concat(char(34), replace(cast([MSEG].[AUFPS] as nvarchar(4)), char(34), char(0)), char(34)),
	 [VPTNR] = concat(char(34), replace(cast([MSEG].[VPTNR] as nvarchar(10)), char(34), char(0)), char(34)),
	 [FIPOS] = concat(char(34), replace(cast([MSEG].[FIPOS] as nvarchar(14)), char(34), char(0)), char(34)),
	 [SAKTO] = concat(char(34), replace(cast([MSEG].[SAKTO] as nvarchar(10)), char(34), char(0)), char(34)),
	 [BSTMG] = cast([MSEG].[BSTMG] as varchar(36)),
	 [BSTME] = concat(char(34), replace(cast([MSEG].[BSTME] as nvarchar(3)), char(34), char(0)), char(34)),
	 [XWSBR] = concat(char(34), replace(cast([MSEG].[XWSBR] as nvarchar(1)), char(34), char(0)), char(34)),
	 [EMLIF] = concat(char(34), replace(cast([MSEG].[EMLIF] as nvarchar(10)), char(34), char(0)), char(34)),
	 [EXBWR] = cast([MSEG].[EXBWR] as varchar(36)),
	 [VKWRT] = cast([MSEG].[VKWRT] as varchar(36)),
	 [AKTNR] = concat(char(34), replace(cast([MSEG].[AKTNR] as nvarchar(10)), char(34), char(0)), char(34)),
	 [ZEKKN] = concat(char(34), replace(cast([MSEG].[ZEKKN] as nvarchar(2)), char(34), char(0)), char(34)),
	 [VFDAT] = concat(char(34), replace(cast([MSEG].[VFDAT] as nvarchar(8)), char(34), char(0)), char(34)),
	 [CUOBJ_CH] = concat(char(34), replace(cast([MSEG].[CUOBJ_CH] as nvarchar(18)), char(34), char(0)), char(34)),
	 [EXVKW] = cast([MSEG].[EXVKW] as varchar(36)),
	 [PPRCTR] = concat(char(34), replace(cast([MSEG].[PPRCTR] as nvarchar(10)), char(34), char(0)), char(34)),
	 [RSART] = concat(char(34), replace(cast([MSEG].[RSART] as nvarchar(1)), char(34), char(0)), char(34)),
	 [GEBER] = concat(char(34), replace(cast([MSEG].[GEBER] as nvarchar(10)), char(34), char(0)), char(34)),
	 [FISTL] = concat(char(34), replace(cast([MSEG].[FISTL] as nvarchar(16)), char(34), char(0)), char(34)),
	 [MATBF] = concat(char(34), replace(cast([MSEG].[MATBF] as nvarchar(18)), char(34), char(0)), char(34)),
	 [UMMAB] = concat(char(34), replace(cast([MSEG].[UMMAB] as nvarchar(18)), char(34), char(0)), char(34)),
	 [BUSTM] = concat(char(34), replace(cast([MSEG].[BUSTM] as nvarchar(4)), char(34), char(0)), char(34)),
	 [BUSTW] = concat(char(34), replace(cast([MSEG].[BUSTW] as nvarchar(4)), char(34), char(0)), char(34)),
	 [MENGU] = concat(char(34), replace(cast([MSEG].[MENGU] as nvarchar(1)), char(34), char(0)), char(34)),
	 [WERTU] = concat(char(34), replace(cast([MSEG].[WERTU] as nvarchar(1)), char(34), char(0)), char(34)),
	 [LBKUM] = cast([MSEG].[LBKUM] as varchar(36)),
	 [SALK3] = cast([MSEG].[SALK3] as varchar(36)),
	 [VPRSV] = concat(char(34), replace(cast([MSEG].[VPRSV] as nvarchar(1)), char(34), char(0)), char(34)),
	 [FKBER] = concat(char(34), replace(cast([MSEG].[FKBER] as nvarchar(16)), char(34), char(0)), char(34)),
	 [DABRBZ] = concat(char(34), replace(cast([MSEG].[DABRBZ] as nvarchar(8)), char(34), char(0)), char(34)),
	 [VKWRA] = cast([MSEG].[VKWRA] as varchar(36)),
	 [DABRZ] = concat(char(34), replace(cast([MSEG].[DABRZ] as nvarchar(8)), char(34), char(0)), char(34)),
	 [XBEAU] = concat(char(34), replace(cast([MSEG].[XBEAU] as nvarchar(1)), char(34), char(0)), char(34)),
	 [LSMNG] = cast([MSEG].[LSMNG] as varchar(36)),
	 [LSMEH] = concat(char(34), replace(cast([MSEG].[LSMEH] as nvarchar(3)), char(34), char(0)), char(34)),
	 [KZBWS] = concat(char(34), replace(cast([MSEG].[KZBWS] as nvarchar(1)), char(34), char(0)), char(34)),
	 [QINSPST] = concat(char(34), replace(cast([MSEG].[QINSPST] as nvarchar(1)), char(34), char(0)), char(34)),
	 [URZEI] = concat(char(34), replace(cast([MSEG].[URZEI] as nvarchar(4)), char(34), char(0)), char(34)),
	 [J_1BEXBASE] = cast([MSEG].[J_1BEXBASE] as varchar(36)),
	 [MWSKZ] = concat(char(34), replace(cast([MSEG].[MWSKZ] as nvarchar(2)), char(34), char(0)), char(34)),
	 [TXJCD] = concat(char(34), replace(cast([MSEG].[TXJCD] as nvarchar(15)), char(34), char(0)), char(34)),
	 [EMATN] = concat(char(34), replace(cast([MSEG].[EMATN] as nvarchar(18)), char(34), char(0)), char(34)),
	 [J_1AGIRUPD] = concat(char(34), replace(cast([MSEG].[J_1AGIRUPD] as nvarchar(1)), char(34), char(0)), char(34)),
	 [VKMWS] = concat(char(34), replace(cast([MSEG].[VKMWS] as nvarchar(2)), char(34), char(0)), char(34)),
	 [HSDAT] = concat(char(34), replace(cast([MSEG].[HSDAT] as nvarchar(8)), char(34), char(0)), char(34)),
	 [BERKZ] = concat(char(34), replace(cast([MSEG].[BERKZ] as nvarchar(1)), char(34), char(0)), char(34)),
	 [MAT_KDAUF] = concat(char(34), replace(cast([MSEG].[MAT_KDAUF] as nvarchar(10)), char(34), char(0)), char(34)),
	 [MAT_KDPOS] = concat(char(34), replace(cast([MSEG].[MAT_KDPOS] as nvarchar(6)), char(34), char(0)), char(34)),
	 [MAT_PSPNR] = concat(char(34), replace(cast([MSEG].[MAT_PSPNR] as nvarchar(8)), char(34), char(0)), char(34)),
	 [XWOFF] = concat(char(34), replace(cast([MSEG].[XWOFF] as nvarchar(1)), char(34), char(0)), char(34)),
	 [BEMOT] = concat(char(34), replace(cast([MSEG].[BEMOT] as nvarchar(2)), char(34), char(0)), char(34)),
	 [PRZNR] = concat(char(34), replace(cast([MSEG].[PRZNR] as nvarchar(12)), char(34), char(0)), char(34)),
	 [LLIEF] = concat(char(34), replace(cast([MSEG].[LLIEF] as nvarchar(10)), char(34), char(0)), char(34)),
	 [LSTAR] = concat(char(34), replace(cast([MSEG].[LSTAR] as nvarchar(6)), char(34), char(0)), char(34)),
	 [XOBEW] = concat(char(34), replace(cast([MSEG].[XOBEW] as nvarchar(1)), char(34), char(0)), char(34)),
	 [GRANT_NBR] = concat(char(34), replace(cast([MSEG].[GRANT_NBR] as nvarchar(20)), char(34), char(0)), char(34)),
	 [ZUSTD_T156M] = concat(char(34), replace(cast([MSEG].[ZUSTD_T156M] as nvarchar(1)), char(34), char(0)), char(34)),
	 [SPE_GTS_STOCK_TY] = concat(char(34), replace(cast([MSEG].[SPE_GTS_STOCK_TY] as nvarchar(1)), char(34), char(0)), char(34)),
	 [KBLNR] = concat(char(34), replace(cast([MSEG].[KBLNR] as nvarchar(10)), char(34), char(0)), char(34)),
	 [KBLPOS] = concat(char(34), replace(cast([MSEG].[KBLPOS] as nvarchar(3)), char(34), char(0)), char(34)),
	 [XMACC] = concat(char(34), replace(cast([MSEG].[XMACC] as nvarchar(1)), char(34), char(0)), char(34)),
	 [VGART_MKPF] = concat(char(34), replace(cast([MSEG].[VGART_MKPF] as nvarchar(2)), char(34), char(0)), char(34)),
	 [BUDAT_MKPF] = concat(char(34), replace(cast([MSEG].[BUDAT_MKPF] as nvarchar(8)), char(34), char(0)), char(34)),
	 [CPUDT_MKPF] = concat(char(34), replace(cast([MSEG].[CPUDT_MKPF] as nvarchar(8)), char(34), char(0)), char(34)),
	 [CPUTM_MKPF] = concat(char(34), replace(cast([MSEG].[CPUTM_MKPF] as nvarchar(6)), char(34), char(0)), char(34)),
	 [USNAM_MKPF] = concat(char(34), replace(cast([MSEG].[USNAM_MKPF] as nvarchar(12)), char(34), char(0)), char(34)),
	 [XBLNR_MKPF] = concat(char(34), replace(cast([MSEG].[XBLNR_MKPF] as nvarchar(16)), char(34), char(0)), char(34)),
	 [TCODE2_MKPF] = concat(char(34), replace(cast([MSEG].[TCODE2_MKPF] as nvarchar(20)), char(34), char(0)), char(34)),
	 [VBELN_IM] = concat(char(34), replace(cast([MSEG].[VBELN_IM] as nvarchar(10)), char(34), char(0)), char(34)),
	 [VBELP_IM] = concat(char(34), replace(cast([MSEG].[VBELP_IM] as nvarchar(6)), char(34), char(0)), char(34)),
	 [/BEV2/ED_KZ_VER] = concat(char(34), replace(cast([MSEG].[/BEV2/ED_KZ_VER] as nvarchar(1)), char(34), char(0)), char(34)),
	 [/BEV2/ED_USER] = concat(char(34), replace(cast([MSEG].[/BEV2/ED_USER] as nvarchar(12)), char(34), char(0)), char(34)),
	 [/BEV2/ED_AEDAT] = concat(char(34), replace(cast([MSEG].[/BEV2/ED_AEDAT] as nvarchar(8)), char(34), char(0)), char(34)),
	 [/BEV2/ED_AETIM] = concat(char(34), replace(cast([MSEG].[/BEV2/ED_AETIM] as nvarchar(6)), char(34), char(0)), char(34)),
	 [DISUB_OWNER] = concat(char(34), replace(cast([MSEG].[DISUB_OWNER] as nvarchar(10)), char(34), char(0)), char(34)),
	 [OINAVNW] = cast([MSEG].[OINAVNW] as varchar(36)),
	 [OICONDCOD] = concat(char(34), replace(cast([MSEG].[OICONDCOD] as nvarchar(2)), char(34), char(0)), char(34)),
	 [CONDI] = concat(char(34), replace(cast([MSEG].[CONDI] as nvarchar(2)), char(34), char(0)), char(34))
from SAP_REPO.dbo.MSEG