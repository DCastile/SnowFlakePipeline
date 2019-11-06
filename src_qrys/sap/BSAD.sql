select
	 [MANDT] = quotename([BSAD].[MANDT], char(34)),
	 [BUKRS] = quotename([BSAD].[BUKRS], char(34)),
	 [KUNNR] = quotename([BSAD].[KUNNR], char(34)),
	 [UMSKS] = quotename([BSAD].[UMSKS], char(34)),
	 [UMSKZ] = quotename([BSAD].[UMSKZ], char(34)),
	 [AUGDT] = convert(varchar(50), [BSAD].[AUGDT], 21),
	 [AUGBL] = quotename([BSAD].[AUGBL], char(34)),
	 [ZUONR] = quotename([BSAD].[ZUONR], char(34)),
	 [GJAHR] = quotename([BSAD].[GJAHR], char(34)),
	 [BELNR] = quotename([BSAD].[BELNR], char(34)),
	 [BUZEI] = quotename([BSAD].[BUZEI], char(34)),
	 [BUDAT] = convert(varchar(50), [BSAD].[BUDAT], 21),
	 [BLDAT] = convert(varchar(50), [BSAD].[BLDAT], 21),
	 [CPUDT] = convert(varchar(50), [BSAD].[CPUDT], 21),
	 [WAERS] = quotename([BSAD].[WAERS], char(34)),
	 [XBLNR] = quotename([BSAD].[XBLNR], char(34)),
	 [BLART] = quotename([BSAD].[BLART], char(34)),
	 [MONAT] = quotename([BSAD].[MONAT], char(34)),
	 [BSCHL] = quotename([BSAD].[BSCHL], char(34)),
	 [ZUMSK] = quotename([BSAD].[ZUMSK], char(34)),
	 [SHKZG] = quotename([BSAD].[SHKZG], char(34)),
	 [GSBER] = quotename([BSAD].[GSBER], char(34)),
	 [MWSKZ] = quotename([BSAD].[MWSKZ], char(34)),
	 [DMBTR] = quotename([BSAD].[DMBTR], char(34)),
	 [WRBTR] = quotename([BSAD].[WRBTR], char(34)),
	 [MWSTS] = quotename([BSAD].[MWSTS], char(34)),
	 [WMWST] = quotename([BSAD].[WMWST], char(34)),
	 [BDIFF] = quotename([BSAD].[BDIFF], char(34)),
	 [BDIF2] = quotename([BSAD].[BDIF2], char(34)),
	 [SGTXT] = quotename([BSAD].[SGTXT], char(34)),
	 [PROJN] = quotename([BSAD].[PROJN], char(34)),
	 [AUFNR] = quotename([BSAD].[AUFNR], char(34)),
	 [ANLN1] = quotename([BSAD].[ANLN1], char(34)),
	 [ANLN2] = quotename([BSAD].[ANLN2], char(34)),
	 [SAKNR] = quotename([BSAD].[SAKNR], char(34)),
	 [HKONT] = quotename([BSAD].[HKONT], char(34)),
	 [FKONT] = quotename([BSAD].[FKONT], char(34)),
	 [FILKD] = quotename([BSAD].[FILKD], char(34)),
	 [ZFBDT] = convert(varchar(50), [BSAD].[ZFBDT], 21),
	 [ZTERM] = quotename([BSAD].[ZTERM], char(34)),
	 [ZBD1T] = quotename([BSAD].[ZBD1T], char(34)),
	 [ZBD2T] = quotename([BSAD].[ZBD2T], char(34)),
	 [ZBD3T] = quotename([BSAD].[ZBD3T], char(34)),
	 [ZBD1P] = quotename([BSAD].[ZBD1P], char(34)),
	 [ZBD2P] = quotename([BSAD].[ZBD2P], char(34)),
	 [SKFBT] = quotename([BSAD].[SKFBT], char(34)),
	 [SKNTO] = quotename([BSAD].[SKNTO], char(34)),
	 [WSKTO] = quotename([BSAD].[WSKTO], char(34)),
	 [ZLSCH] = quotename([BSAD].[ZLSCH], char(34)),
	 [ZLSPR] = quotename([BSAD].[ZLSPR], char(34)),
	 [ZBFIX] = quotename([BSAD].[ZBFIX], char(34)),
	 [HBKID] = quotename([BSAD].[HBKID], char(34)),
	 [BVTYP] = quotename([BSAD].[BVTYP], char(34)),
	 [REBZG] = quotename([BSAD].[REBZG], char(34)),
	 [REBZJ] = quotename([BSAD].[REBZJ], char(34)),
	 [REBZZ] = quotename([BSAD].[REBZZ], char(34)),
	 [SAMNR] = quotename([BSAD].[SAMNR], char(34)),
	 [ANFBN] = quotename([BSAD].[ANFBN], char(34)),
	 [ANFBJ] = quotename([BSAD].[ANFBJ], char(34)),
	 [ANFBU] = quotename([BSAD].[ANFBU], char(34)),
	 [ANFAE] = convert(varchar(50), [BSAD].[ANFAE], 21),
	 [MANSP] = quotename([BSAD].[MANSP], char(34)),
	 [MSCHL] = quotename([BSAD].[MSCHL], char(34)),
	 [MADAT] = convert(varchar(50), [BSAD].[MADAT], 21),
	 [MANST] = quotename([BSAD].[MANST], char(34)),
	 [MABER] = quotename([BSAD].[MABER], char(34)),
	 [XNETB] = quotename([BSAD].[XNETB], char(34)),
	 [XANET] = quotename([BSAD].[XANET], char(34)),
	 [XCPDD] = quotename([BSAD].[XCPDD], char(34)),
	 [XINVE] = quotename([BSAD].[XINVE], char(34)),
	 [XZAHL] = quotename([BSAD].[XZAHL], char(34)),
	 [MWSK1] = quotename([BSAD].[MWSK1], char(34)),
	 [DMBT1] = quotename([BSAD].[DMBT1], char(34)),
	 [WRBT1] = quotename([BSAD].[WRBT1], char(34)),
	 [MWSK2] = quotename([BSAD].[MWSK2], char(34)),
	 [DMBT2] = quotename([BSAD].[DMBT2], char(34)),
	 [WRBT2] = quotename([BSAD].[WRBT2], char(34)),
	 [MWSK3] = quotename([BSAD].[MWSK3], char(34)),
	 [DMBT3] = quotename([BSAD].[DMBT3], char(34)),
	 [WRBT3] = quotename([BSAD].[WRBT3], char(34)),
	 [BSTAT] = quotename([BSAD].[BSTAT], char(34)),
	 [VBUND] = quotename([BSAD].[VBUND], char(34)),
	 [VBELN] = quotename([BSAD].[VBELN], char(34)),
	 [REBZT] = quotename([BSAD].[REBZT], char(34)),
	 [INFAE] = quotename([BSAD].[INFAE], char(34)),
	 [STCEG] = quotename([BSAD].[STCEG], char(34)),
	 [EGBLD] = quotename([BSAD].[EGBLD], char(34)),
	 [EGLLD] = quotename([BSAD].[EGLLD], char(34)),
	 [RSTGR] = quotename([BSAD].[RSTGR], char(34)),
	 [XNOZA] = quotename([BSAD].[XNOZA], char(34)),
	 [VERTT] = quotename([BSAD].[VERTT], char(34)),
	 [VERTN] = quotename([BSAD].[VERTN], char(34)),
	 [VBEWA] = quotename([BSAD].[VBEWA], char(34)),
	 [WVERW] = quotename([BSAD].[WVERW], char(34)),
	 [PROJK] = quotename([BSAD].[PROJK], char(34)),
	 [FIPOS] = quotename([BSAD].[FIPOS], char(34)),
	 [NPLNR] = quotename([BSAD].[NPLNR], char(34)),
	 [AUFPL] = quotename([BSAD].[AUFPL], char(34)),
	 [APLZL] = quotename([BSAD].[APLZL], char(34)),
	 [XEGDR] = quotename([BSAD].[XEGDR], char(34)),
	 [DMBE2] = quotename([BSAD].[DMBE2], char(34)),
	 [DMBE3] = quotename([BSAD].[DMBE3], char(34)),
	 [DMB21] = quotename([BSAD].[DMB21], char(34)),
	 [DMB22] = quotename([BSAD].[DMB22], char(34)),
	 [DMB23] = quotename([BSAD].[DMB23], char(34)),
	 [DMB31] = quotename([BSAD].[DMB31], char(34)),
	 [DMB32] = quotename([BSAD].[DMB32], char(34)),
	 [DMB33] = quotename([BSAD].[DMB33], char(34)),
	 [BDIF3] = quotename([BSAD].[BDIF3], char(34)),
	 [XRAGL] = quotename([BSAD].[XRAGL], char(34)),
	 [UZAWE] = quotename([BSAD].[UZAWE], char(34)),
	 [XSTOV] = quotename([BSAD].[XSTOV], char(34)),
	 [MWST2] = quotename([BSAD].[MWST2], char(34)),
	 [MWST3] = quotename([BSAD].[MWST3], char(34)),
	 [SKNT2] = quotename([BSAD].[SKNT2], char(34)),
	 [SKNT3] = quotename([BSAD].[SKNT3], char(34)),
	 [XREF1] = quotename([BSAD].[XREF1], char(34)),
	 [XREF2] = quotename([BSAD].[XREF2], char(34)),
	 [XARCH] = quotename([BSAD].[XARCH], char(34)),
	 [PSWSL] = quotename([BSAD].[PSWSL], char(34)),
	 [PSWBT] = quotename([BSAD].[PSWBT], char(34)),
	 [LZBKZ] = quotename([BSAD].[LZBKZ], char(34)),
	 [LANDL] = quotename([BSAD].[LANDL], char(34)),
	 [IMKEY] = quotename([BSAD].[IMKEY], char(34)),
	 [VBEL2] = quotename([BSAD].[VBEL2], char(34)),
	 [VPOS2] = quotename([BSAD].[VPOS2], char(34)),
	 [POSN2] = quotename([BSAD].[POSN2], char(34)),
	 [ETEN2] = quotename([BSAD].[ETEN2], char(34)),
	 [FISTL] = quotename([BSAD].[FISTL], char(34)),
	 [GEBER] = quotename([BSAD].[GEBER], char(34)),
	 [DABRZ] = convert(varchar(50), [BSAD].[DABRZ], 21),
	 [XNEGP] = quotename([BSAD].[XNEGP], char(34)),
	 [KOSTL] = quotename([BSAD].[KOSTL], char(34)),
	 [RFZEI] = quotename([BSAD].[RFZEI], char(34)),
	 [KKBER] = quotename([BSAD].[KKBER], char(34)),
	 [EMPFB] = quotename([BSAD].[EMPFB], char(34)),
	 [PRCTR] = quotename([BSAD].[PRCTR], char(34)),
	 [XREF3] = quotename([BSAD].[XREF3], char(34)),
	 [QSSKZ] = quotename([BSAD].[QSSKZ], char(34)),
	 [ZINKZ] = quotename([BSAD].[ZINKZ], char(34)),
	 [DTWS1] = quotename([BSAD].[DTWS1], char(34)),
	 [DTWS2] = quotename([BSAD].[DTWS2], char(34)),
	 [DTWS3] = quotename([BSAD].[DTWS3], char(34)),
	 [DTWS4] = quotename([BSAD].[DTWS4], char(34)),
	 [XPYPR] = quotename([BSAD].[XPYPR], char(34)),
	 [KIDNO] = quotename([BSAD].[KIDNO], char(34)),
	 [ABSBT] = quotename([BSAD].[ABSBT], char(34)),
	 [CCBTC] = quotename([BSAD].[CCBTC], char(34)),
	 [PYCUR] = quotename([BSAD].[PYCUR], char(34)),
	 [PYAMT] = quotename([BSAD].[PYAMT], char(34)),
	 [BUPLA] = quotename([BSAD].[BUPLA], char(34)),
	 [SECCO] = quotename([BSAD].[SECCO], char(34)),
	 [CESSION_KZ] = quotename([BSAD].[CESSION_KZ], char(34)),
	 [PPDIFF] = quotename([BSAD].[PPDIFF], char(34)),
	 [PPDIF2] = quotename([BSAD].[PPDIF2], char(34)),
	 [PPDIF3] = quotename([BSAD].[PPDIF3], char(34)),
	 [KBLNR] = quotename([BSAD].[KBLNR], char(34)),
	 [KBLPOS] = quotename([BSAD].[KBLPOS], char(34)),
	 [GRANT_NBR] = quotename([BSAD].[GRANT_NBR], char(34)),
	 [GMVKZ] = quotename([BSAD].[GMVKZ], char(34)),
	 [SRTYPE] = quotename([BSAD].[SRTYPE], char(34)),
	 [LOTKZ] = quotename([BSAD].[LOTKZ], char(34)),
	 [FKBER] = quotename([BSAD].[FKBER], char(34)),
	 [INTRENO] = quotename([BSAD].[INTRENO], char(34)),
	 [PPRCT] = quotename([BSAD].[PPRCT], char(34)),
	 [BUZID] = quotename([BSAD].[BUZID], char(34)),
	 [AUGGJ] = quotename([BSAD].[AUGGJ], char(34)),
	 [HKTID] = quotename([BSAD].[HKTID], char(34)),
	 [BUDGET_PD] = quotename([BSAD].[BUDGET_PD], char(34)),
	 [PAYS_PROV] = quotename([BSAD].[PAYS_PROV], char(34)),
	 [PAYS_TRAN] = quotename([BSAD].[PAYS_TRAN], char(34)),
	 [MNDID] = quotename([BSAD].[MNDID], char(34)),
	 [KONTT] = quotename([BSAD].[KONTT], char(34)),
	 [KONTL] = quotename([BSAD].[KONTL], char(34)),
	 [UEBGDAT] = convert(varchar(50), [BSAD].[UEBGDAT], 21),
	 [VNAME] = quotename([BSAD].[VNAME], char(34)),
	 [EGRUP] = quotename([BSAD].[EGRUP], char(34)),
	 [BTYPE] = quotename([BSAD].[BTYPE], char(34)),
	 [PROPMANO] = quotename([BSAD].[PROPMANO], char(34)),
	 [ETL_DATA_SOURCE] = quotename([BSAD].[ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename([BSAD].[ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = convert(varchar(50), [BSAD].[ETL_LOAD_DATE], 21)
from SAP_Production.dbo.BSAD