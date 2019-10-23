select
	 [MANDT] = isNull(quotename([MANDT], char(34)), '\N'),
	 [BUKRS] = isNull(quotename([BUKRS], char(34)), '\N'),
	 [LIFNR] = isNull(quotename([LIFNR], char(34)), '\N'),
	 [UMSKS] = isNull(quotename([UMSKS], char(34)), '\N'),
	 [UMSKZ] = isNull(quotename([UMSKZ], char(34)), '\N'),
	 [AUGDT] = isNull(quotename([AUGDT], char(34)), '\N'),
	 [AUGBL] = isNull(quotename([AUGBL], char(34)), '\N'),
	 [ZUONR] = isNull(quotename([ZUONR], char(34)), '\N'),
	 [GJAHR] = isNull(quotename([GJAHR], char(34)), '\N'),
	 [BELNR] = isNull(quotename([BELNR], char(34)), '\N'),
	 [BUZEI] = isNull(quotename([BUZEI], char(34)), '\N'),
	 [BUDAT] = isNull(quotename([BUDAT], char(34)), '\N'),
	 [BLDAT] = isNull(quotename([BLDAT], char(34)), '\N'),
	 [CPUDT] = isNull(quotename([CPUDT], char(34)), '\N'),
	 [WAERS] = isNull(quotename([WAERS], char(34)), '\N'),
	 [XBLNR] = isNull(quotename([XBLNR], char(34)), '\N'),
	 [BLART] = isNull(quotename([BLART], char(34)), '\N'),
	 [MONAT] = isNull(quotename([MONAT], char(34)), '\N'),
	 [BSCHL] = isNull(quotename([BSCHL], char(34)), '\N'),
	 [ZUMSK] = isNull(quotename([ZUMSK], char(34)), '\N'),
	 [SHKZG] = isNull(quotename([SHKZG], char(34)), '\N'),
	 [GSBER] = isNull(quotename([GSBER], char(34)), '\N'),
	 [MWSKZ] = isNull(quotename([MWSKZ], char(34)), '\N'),
	 [DMBTR] = isNull(quotename([DMBTR], char(34)), '\N'),
	 [WRBTR] = isNull(quotename([WRBTR], char(34)), '\N'),
	 [MWSTS] = isNull(quotename([MWSTS], char(34)), '\N'),
	 [WMWST] = isNull(quotename([WMWST], char(34)), '\N'),
	 [BDIFF] = isNull(quotename([BDIFF], char(34)), '\N'),
	 [BDIF2] = isNull(quotename([BDIF2], char(34)), '\N'),
	 [SGTXT] = isNull(quotename([SGTXT], char(34)), '\N'),
	 [PROJN] = isNull(quotename([PROJN], char(34)), '\N'),
	 [AUFNR] = isNull(quotename([AUFNR], char(34)), '\N'),
	 [ANLN1] = isNull(quotename([ANLN1], char(34)), '\N'),
	 [ANLN2] = isNull(quotename([ANLN2], char(34)), '\N'),
	 [EBELN] = isNull(quotename([EBELN], char(34)), '\N'),
	 [EBELP] = isNull(quotename([EBELP], char(34)), '\N'),
	 [SAKNR] = isNull(quotename([SAKNR], char(34)), '\N'),
	 [HKONT] = isNull(quotename([HKONT], char(34)), '\N'),
	 [FKONT] = isNull(quotename([FKONT], char(34)), '\N'),
	 [FILKD] = isNull(quotename([FILKD], char(34)), '\N'),
	 [ZFBDT] = isNull(quotename([ZFBDT], char(34)), '\N'),
	 [ZTERM] = isNull(quotename([ZTERM], char(34)), '\N'),
	 [ZBD1T] = isNull(quotename([ZBD1T], char(34)), '\N'),
	 [ZBD2T] = isNull(quotename([ZBD2T], char(34)), '\N'),
	 [ZBD3T] = isNull(quotename([ZBD3T], char(34)), '\N'),
	 [ZBD1P] = isNull(quotename([ZBD1P], char(34)), '\N'),
	 [ZBD2P] = isNull(quotename([ZBD2P], char(34)), '\N'),
	 [SKFBT] = isNull(quotename([SKFBT], char(34)), '\N'),
	 [SKNTO] = isNull(quotename([SKNTO], char(34)), '\N'),
	 [WSKTO] = isNull(quotename([WSKTO], char(34)), '\N'),
	 [ZLSCH] = isNull(quotename([ZLSCH], char(34)), '\N'),
	 [ZLSPR] = isNull(quotename([ZLSPR], char(34)), '\N'),
	 [ZBFIX] = isNull(quotename([ZBFIX], char(34)), '\N'),
	 [HBKID] = isNull(quotename([HBKID], char(34)), '\N'),
	 [BVTYP] = isNull(quotename([BVTYP], char(34)), '\N'),
	 [REBZG] = isNull(quotename([REBZG], char(34)), '\N'),
	 [REBZJ] = isNull(quotename([REBZJ], char(34)), '\N'),
	 [REBZZ] = isNull(quotename([REBZZ], char(34)), '\N'),
	 [SAMNR] = isNull(quotename([SAMNR], char(34)), '\N'),
	 [ZOLLT] = isNull(quotename([ZOLLT], char(34)), '\N'),
	 [ZOLLD] = isNull(quotename([ZOLLD], char(34)), '\N'),
	 [LZBKZ] = isNull(quotename([LZBKZ], char(34)), '\N'),
	 [LANDL] = isNull(quotename([LANDL], char(34)), '\N'),
	 [DIEKZ] = isNull(quotename([DIEKZ], char(34)), '\N'),
	 [MANSP] = isNull(quotename([MANSP], char(34)), '\N'),
	 [MSCHL] = isNull(quotename([MSCHL], char(34)), '\N'),
	 [MADAT] = isNull(quotename([MADAT], char(34)), '\N'),
	 [MANST] = isNull(quotename([MANST], char(34)), '\N'),
	 [MABER] = isNull(quotename([MABER], char(34)), '\N'),
	 [XNETB] = isNull(quotename([XNETB], char(34)), '\N'),
	 [XANET] = isNull(quotename([XANET], char(34)), '\N'),
	 [XCPDD] = isNull(quotename([XCPDD], char(34)), '\N'),
	 [XESRD] = isNull(quotename([XESRD], char(34)), '\N'),
	 [XZAHL] = isNull(quotename([XZAHL], char(34)), '\N'),
	 [MWSK1] = isNull(quotename([MWSK1], char(34)), '\N'),
	 [DMBT1] = isNull(quotename([DMBT1], char(34)), '\N'),
	 [WRBT1] = isNull(quotename([WRBT1], char(34)), '\N'),
	 [MWSK2] = isNull(quotename([MWSK2], char(34)), '\N'),
	 [DMBT2] = isNull(quotename([DMBT2], char(34)), '\N'),
	 [WRBT2] = isNull(quotename([WRBT2], char(34)), '\N'),
	 [MWSK3] = isNull(quotename([MWSK3], char(34)), '\N'),
	 [DMBT3] = isNull(quotename([DMBT3], char(34)), '\N'),
	 [WRBT3] = isNull(quotename([WRBT3], char(34)), '\N'),
	 [QSSKZ] = isNull(quotename([QSSKZ], char(34)), '\N'),
	 [QSSHB] = isNull(quotename([QSSHB], char(34)), '\N'),
	 [QBSHB] = isNull(quotename([QBSHB], char(34)), '\N'),
	 [BSTAT] = isNull(quotename([BSTAT], char(34)), '\N'),
	 [ANFBN] = isNull(quotename([ANFBN], char(34)), '\N'),
	 [ANFBJ] = isNull(quotename([ANFBJ], char(34)), '\N'),
	 [ANFBU] = isNull(quotename([ANFBU], char(34)), '\N'),
	 [VBUND] = isNull(quotename([VBUND], char(34)), '\N'),
	 [REBZT] = isNull(quotename([REBZT], char(34)), '\N'),
	 [STCEG] = isNull(quotename([STCEG], char(34)), '\N'),
	 [EGBLD] = isNull(quotename([EGBLD], char(34)), '\N'),
	 [EGLLD] = isNull(quotename([EGLLD], char(34)), '\N'),
	 [QSZNR] = isNull(quotename([QSZNR], char(34)), '\N'),
	 [QSFBT] = isNull(quotename([QSFBT], char(34)), '\N'),
	 [XINVE] = isNull(quotename([XINVE], char(34)), '\N'),
	 [PROJK] = isNull(quotename([PROJK], char(34)), '\N'),
	 [FIPOS] = isNull(quotename([FIPOS], char(34)), '\N'),
	 [NPLNR] = isNull(quotename([NPLNR], char(34)), '\N'),
	 [AUFPL] = isNull(quotename([AUFPL], char(34)), '\N'),
	 [APLZL] = isNull(quotename([APLZL], char(34)), '\N'),
	 [XEGDR] = isNull(quotename([XEGDR], char(34)), '\N'),
	 [DMBE2] = isNull(quotename([DMBE2], char(34)), '\N'),
	 [DMBE3] = isNull(quotename([DMBE3], char(34)), '\N'),
	 [DMB21] = isNull(quotename([DMB21], char(34)), '\N'),
	 [DMB22] = isNull(quotename([DMB22], char(34)), '\N'),
	 [DMB23] = isNull(quotename([DMB23], char(34)), '\N'),
	 [DMB31] = isNull(quotename([DMB31], char(34)), '\N'),
	 [DMB32] = isNull(quotename([DMB32], char(34)), '\N'),
	 [DMB33] = isNull(quotename([DMB33], char(34)), '\N'),
	 [MWST2] = isNull(quotename([MWST2], char(34)), '\N'),
	 [MWST3] = isNull(quotename([MWST3], char(34)), '\N'),
	 [SKNT2] = isNull(quotename([SKNT2], char(34)), '\N'),
	 [SKNT3] = isNull(quotename([SKNT3], char(34)), '\N'),
	 [BDIF3] = isNull(quotename([BDIF3], char(34)), '\N'),
	 [XRAGL] = isNull(quotename([XRAGL], char(34)), '\N'),
	 [RSTGR] = isNull(quotename([RSTGR], char(34)), '\N'),
	 [UZAWE] = isNull(quotename([UZAWE], char(34)), '\N'),
	 [KOSTL] = isNull(quotename([KOSTL], char(34)), '\N'),
	 [LNRAN] = isNull(quotename([LNRAN], char(34)), '\N'),
	 [XSTOV] = isNull(quotename([XSTOV], char(34)), '\N'),
	 [KZBTR] = isNull(quotename([KZBTR], char(34)), '\N'),
	 [XREF1] = isNull(quotename([XREF1], char(34)), '\N'),
	 [XREF2] = isNull(quotename([XREF2], char(34)), '\N'),
	 [XARCH] = isNull(quotename([XARCH], char(34)), '\N'),
	 [PSWSL] = isNull(quotename([PSWSL], char(34)), '\N'),
	 [PSWBT] = isNull(quotename([PSWBT], char(34)), '\N'),
	 [IMKEY] = isNull(quotename([IMKEY], char(34)), '\N'),
	 [ZEKKN] = isNull(quotename([ZEKKN], char(34)), '\N'),
	 [FISTL] = isNull(quotename([FISTL], char(34)), '\N'),
	 [GEBER] = isNull(quotename([GEBER], char(34)), '\N'),
	 [DABRZ] = isNull(quotename([DABRZ], char(34)), '\N'),
	 [XNEGP] = isNull(quotename([XNEGP], char(34)), '\N'),
	 [EMPFB] = isNull(quotename([EMPFB], char(34)), '\N'),
	 [PRCTR] = isNull(quotename([PRCTR], char(34)), '\N'),
	 [XREF3] = isNull(quotename([XREF3], char(34)), '\N'),
	 [DTWS1] = isNull(quotename([DTWS1], char(34)), '\N'),
	 [DTWS2] = isNull(quotename([DTWS2], char(34)), '\N'),
	 [DTWS3] = isNull(quotename([DTWS3], char(34)), '\N'),
	 [DTWS4] = isNull(quotename([DTWS4], char(34)), '\N'),
	 [XPYPR] = isNull(quotename([XPYPR], char(34)), '\N'),
	 [KIDNO] = isNull(quotename([KIDNO], char(34)), '\N'),
	 [PYCUR] = isNull(quotename([PYCUR], char(34)), '\N'),
	 [PYAMT] = isNull(quotename([PYAMT], char(34)), '\N'),
	 [BUPLA] = isNull(quotename([BUPLA], char(34)), '\N'),
	 [SECCO] = isNull(quotename([SECCO], char(34)), '\N'),
	 [PPDIFF] = isNull(quotename([PPDIFF], char(34)), '\N'),
	 [PPDIF2] = isNull(quotename([PPDIF2], char(34)), '\N'),
	 [PPDIF3] = isNull(quotename([PPDIF3], char(34)), '\N'),
	 [PENLC1] = isNull(quotename([PENLC1], char(34)), '\N'),
	 [PENLC2] = isNull(quotename([PENLC2], char(34)), '\N'),
	 [PENLC3] = isNull(quotename([PENLC3], char(34)), '\N'),
	 [PENFC] = isNull(quotename([PENFC], char(34)), '\N'),
	 [PENDAYS] = isNull(quotename([PENDAYS], char(34)), '\N'),
	 [PENRC] = isNull(quotename([PENRC], char(34)), '\N'),
	 [VERTT] = isNull(quotename([VERTT], char(34)), '\N'),
	 [VERTN] = isNull(quotename([VERTN], char(34)), '\N'),
	 [VBEWA] = isNull(quotename([VBEWA], char(34)), '\N'),
	 [KBLNR] = isNull(quotename([KBLNR], char(34)), '\N'),
	 [KBLPOS] = isNull(quotename([KBLPOS], char(34)), '\N'),
	 [GRANT_NBR] = isNull(quotename([GRANT_NBR], char(34)), '\N'),
	 [GMVKZ] = isNull(quotename([GMVKZ], char(34)), '\N'),
	 [SRTYPE] = isNull(quotename([SRTYPE], char(34)), '\N'),
	 [LOTKZ] = isNull(quotename([LOTKZ], char(34)), '\N'),
	 [ZINKZ] = isNull(quotename([ZINKZ], char(34)), '\N'),
	 [FKBER] = isNull(quotename([FKBER], char(34)), '\N'),
	 [INTRENO] = isNull(quotename([INTRENO], char(34)), '\N'),
	 [PPRCT] = isNull(quotename([PPRCT], char(34)), '\N'),
	 [BUZID] = isNull(quotename([BUZID], char(34)), '\N'),
	 [AUGGJ] = isNull(quotename([AUGGJ], char(34)), '\N'),
	 [HKTID] = isNull(quotename([HKTID], char(34)), '\N'),
	 [BUDGET_PD] = isNull(quotename([BUDGET_PD], char(34)), '\N'),
	 [KONTT] = isNull(quotename([KONTT], char(34)), '\N'),
	 [KONTL] = isNull(quotename([KONTL], char(34)), '\N'),
	 [UEBGDAT] = isNull(quotename([UEBGDAT], char(34)), '\N'),
	 [VNAME] = isNull(quotename([VNAME], char(34)), '\N'),
	 [EGRUP] = isNull(quotename([EGRUP], char(34)), '\N'),
	 [BTYPE] = isNull(quotename([BTYPE], char(34)), '\N'),
	 [PROPMANO] = isNull(quotename([PROPMANO], char(34)), '\N'),
	 [ETL_DATA_SOURCE] = isNull(quotename([ETL_DATA_SOURCE], char(34)), '\N'),
	 [ETL_PROCESS_ID] = isNull(quotename([ETL_PROCESS_ID], char(34)), '\N'),
	 [ETL_LOAD_DATE] = isNull(quotename([ETL_LOAD_DATE], char(34)), '\N')
from SAP_Production.dbo.BSIK