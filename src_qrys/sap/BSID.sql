select
	 [MANDT] = concat(char(34), replace(cast([BSID].[MANDT] as nvarchar(3)), char(34), char(0)), char(34)),
	 [BUKRS] = concat(char(34), replace(cast([BSID].[BUKRS] as nvarchar(4)), char(34), char(0)), char(34)),
	 [KUNNR] = concat(char(34), replace(cast([BSID].[KUNNR] as nvarchar(10)), char(34), char(0)), char(34)),
	 [UMSKS] = concat(char(34), replace(cast([BSID].[UMSKS] as nvarchar(1)), char(34), char(0)), char(34)),
	 [UMSKZ] = concat(char(34), replace(cast([BSID].[UMSKZ] as nvarchar(1)), char(34), char(0)), char(34)),
	 [AUGDT] = concat(char(34), replace(cast([BSID].[AUGDT] as nvarchar(8)), char(34), char(0)), char(34)),
	 [AUGBL] = concat(char(34), replace(cast([BSID].[AUGBL] as nvarchar(10)), char(34), char(0)), char(34)),
	 [ZUONR] = concat(char(34), replace(cast([BSID].[ZUONR] as nvarchar(18)), char(34), char(0)), char(34)),
	 [GJAHR] = concat(char(34), replace(cast([BSID].[GJAHR] as nvarchar(4)), char(34), char(0)), char(34)),
	 [BELNR] = concat(char(34), replace(cast([BSID].[BELNR] as nvarchar(10)), char(34), char(0)), char(34)),
	 [BUZEI] = concat(char(34), replace(cast([BSID].[BUZEI] as nvarchar(3)), char(34), char(0)), char(34)),
	 [BUDAT] = concat(char(34), replace(cast([BSID].[BUDAT] as nvarchar(8)), char(34), char(0)), char(34)),
	 [BLDAT] = concat(char(34), replace(cast([BSID].[BLDAT] as nvarchar(8)), char(34), char(0)), char(34)),
	 [CPUDT] = concat(char(34), replace(cast([BSID].[CPUDT] as nvarchar(8)), char(34), char(0)), char(34)),
	 [WAERS] = concat(char(34), replace(cast([BSID].[WAERS] as nvarchar(5)), char(34), char(0)), char(34)),
	 [XBLNR] = concat(char(34), replace(cast([BSID].[XBLNR] as nvarchar(16)), char(34), char(0)), char(34)),
	 [BLART] = concat(char(34), replace(cast([BSID].[BLART] as nvarchar(2)), char(34), char(0)), char(34)),
	 [MONAT] = concat(char(34), replace(cast([BSID].[MONAT] as nvarchar(2)), char(34), char(0)), char(34)),
	 [BSCHL] = concat(char(34), replace(cast([BSID].[BSCHL] as nvarchar(2)), char(34), char(0)), char(34)),
	 [ZUMSK] = concat(char(34), replace(cast([BSID].[ZUMSK] as nvarchar(1)), char(34), char(0)), char(34)),
	 [SHKZG] = concat(char(34), replace(cast([BSID].[SHKZG] as nvarchar(1)), char(34), char(0)), char(34)),
	 [GSBER] = concat(char(34), replace(cast([BSID].[GSBER] as nvarchar(4)), char(34), char(0)), char(34)),
	 [MWSKZ] = concat(char(34), replace(cast([BSID].[MWSKZ] as nvarchar(2)), char(34), char(0)), char(34)),
	 [DMBTR] = cast([BSID].[DMBTR] as varchar(36)),
	 [WRBTR] = cast([BSID].[WRBTR] as varchar(36)),
	 [MWSTS] = cast([BSID].[MWSTS] as varchar(36)),
	 [WMWST] = cast([BSID].[WMWST] as varchar(36)),
	 [BDIFF] = cast([BSID].[BDIFF] as varchar(36)),
	 [BDIF2] = cast([BSID].[BDIF2] as varchar(36)),
	 [SGTXT] = concat(char(34), replace(cast([BSID].[SGTXT] as nvarchar(50)), char(34), char(0)), char(34)),
	 [PROJN] = concat(char(34), replace(cast([BSID].[PROJN] as nvarchar(16)), char(34), char(0)), char(34)),
	 [AUFNR] = concat(char(34), replace(cast([BSID].[AUFNR] as nvarchar(12)), char(34), char(0)), char(34)),
	 [ANLN1] = concat(char(34), replace(cast([BSID].[ANLN1] as nvarchar(12)), char(34), char(0)), char(34)),
	 [ANLN2] = concat(char(34), replace(cast([BSID].[ANLN2] as nvarchar(4)), char(34), char(0)), char(34)),
	 [SAKNR] = concat(char(34), replace(cast([BSID].[SAKNR] as nvarchar(10)), char(34), char(0)), char(34)),
	 [HKONT] = concat(char(34), replace(cast([BSID].[HKONT] as nvarchar(10)), char(34), char(0)), char(34)),
	 [FKONT] = concat(char(34), replace(cast([BSID].[FKONT] as nvarchar(3)), char(34), char(0)), char(34)),
	 [FILKD] = concat(char(34), replace(cast([BSID].[FILKD] as nvarchar(10)), char(34), char(0)), char(34)),
	 [ZFBDT] = concat(char(34), replace(cast([BSID].[ZFBDT] as nvarchar(8)), char(34), char(0)), char(34)),
	 [ZTERM] = concat(char(34), replace(cast([BSID].[ZTERM] as nvarchar(4)), char(34), char(0)), char(34)),
	 [ZBD1T] = cast([BSID].[ZBD1T] as varchar(36)),
	 [ZBD2T] = cast([BSID].[ZBD2T] as varchar(36)),
	 [ZBD3T] = cast([BSID].[ZBD3T] as varchar(36)),
	 [ZBD1P] = cast([BSID].[ZBD1P] as varchar(36)),
	 [ZBD2P] = cast([BSID].[ZBD2P] as varchar(36)),
	 [SKFBT] = cast([BSID].[SKFBT] as varchar(36)),
	 [SKNTO] = cast([BSID].[SKNTO] as varchar(36)),
	 [WSKTO] = cast([BSID].[WSKTO] as varchar(36)),
	 [ZLSCH] = concat(char(34), replace(cast([BSID].[ZLSCH] as nvarchar(1)), char(34), char(0)), char(34)),
	 [ZLSPR] = concat(char(34), replace(cast([BSID].[ZLSPR] as nvarchar(1)), char(34), char(0)), char(34)),
	 [ZBFIX] = concat(char(34), replace(cast([BSID].[ZBFIX] as nvarchar(1)), char(34), char(0)), char(34)),
	 [HBKID] = concat(char(34), replace(cast([BSID].[HBKID] as nvarchar(5)), char(34), char(0)), char(34)),
	 [BVTYP] = concat(char(34), replace(cast([BSID].[BVTYP] as nvarchar(4)), char(34), char(0)), char(34)),
	 [REBZG] = concat(char(34), replace(cast([BSID].[REBZG] as nvarchar(10)), char(34), char(0)), char(34)),
	 [REBZJ] = concat(char(34), replace(cast([BSID].[REBZJ] as nvarchar(4)), char(34), char(0)), char(34)),
	 [REBZZ] = concat(char(34), replace(cast([BSID].[REBZZ] as nvarchar(3)), char(34), char(0)), char(34)),
	 [SAMNR] = concat(char(34), replace(cast([BSID].[SAMNR] as nvarchar(8)), char(34), char(0)), char(34)),
	 [ANFBN] = concat(char(34), replace(cast([BSID].[ANFBN] as nvarchar(10)), char(34), char(0)), char(34)),
	 [ANFBJ] = concat(char(34), replace(cast([BSID].[ANFBJ] as nvarchar(4)), char(34), char(0)), char(34)),
	 [ANFBU] = concat(char(34), replace(cast([BSID].[ANFBU] as nvarchar(4)), char(34), char(0)), char(34)),
	 [ANFAE] = concat(char(34), replace(cast([BSID].[ANFAE] as nvarchar(8)), char(34), char(0)), char(34)),
	 [MANSP] = concat(char(34), replace(cast([BSID].[MANSP] as nvarchar(1)), char(34), char(0)), char(34)),
	 [MSCHL] = concat(char(34), replace(cast([BSID].[MSCHL] as nvarchar(1)), char(34), char(0)), char(34)),
	 [MADAT] = concat(char(34), replace(cast([BSID].[MADAT] as nvarchar(8)), char(34), char(0)), char(34)),
	 [MANST] = concat(char(34), replace(cast([BSID].[MANST] as nvarchar(1)), char(34), char(0)), char(34)),
	 [MABER] = concat(char(34), replace(cast([BSID].[MABER] as nvarchar(2)), char(34), char(0)), char(34)),
	 [XNETB] = concat(char(34), replace(cast([BSID].[XNETB] as nvarchar(1)), char(34), char(0)), char(34)),
	 [XANET] = concat(char(34), replace(cast([BSID].[XANET] as nvarchar(1)), char(34), char(0)), char(34)),
	 [XCPDD] = concat(char(34), replace(cast([BSID].[XCPDD] as nvarchar(1)), char(34), char(0)), char(34)),
	 [XINVE] = concat(char(34), replace(cast([BSID].[XINVE] as nvarchar(1)), char(34), char(0)), char(34)),
	 [XZAHL] = concat(char(34), replace(cast([BSID].[XZAHL] as nvarchar(1)), char(34), char(0)), char(34)),
	 [MWSK1] = concat(char(34), replace(cast([BSID].[MWSK1] as nvarchar(2)), char(34), char(0)), char(34)),
	 [DMBT1] = cast([BSID].[DMBT1] as varchar(36)),
	 [WRBT1] = cast([BSID].[WRBT1] as varchar(36)),
	 [MWSK2] = concat(char(34), replace(cast([BSID].[MWSK2] as nvarchar(2)), char(34), char(0)), char(34)),
	 [DMBT2] = cast([BSID].[DMBT2] as varchar(36)),
	 [WRBT2] = cast([BSID].[WRBT2] as varchar(36)),
	 [MWSK3] = concat(char(34), replace(cast([BSID].[MWSK3] as nvarchar(2)), char(34), char(0)), char(34)),
	 [DMBT3] = cast([BSID].[DMBT3] as varchar(36)),
	 [WRBT3] = cast([BSID].[WRBT3] as varchar(36)),
	 [BSTAT] = concat(char(34), replace(cast([BSID].[BSTAT] as nvarchar(1)), char(34), char(0)), char(34)),
	 [VBUND] = concat(char(34), replace(cast([BSID].[VBUND] as nvarchar(6)), char(34), char(0)), char(34)),
	 [VBELN] = concat(char(34), replace(cast([BSID].[VBELN] as nvarchar(10)), char(34), char(0)), char(34)),
	 [REBZT] = concat(char(34), replace(cast([BSID].[REBZT] as nvarchar(1)), char(34), char(0)), char(34)),
	 [INFAE] = concat(char(34), replace(cast([BSID].[INFAE] as nvarchar(8)), char(34), char(0)), char(34)),
	 [STCEG] = concat(char(34), replace(cast([BSID].[STCEG] as nvarchar(20)), char(34), char(0)), char(34)),
	 [EGBLD] = concat(char(34), replace(cast([BSID].[EGBLD] as nvarchar(3)), char(34), char(0)), char(34)),
	 [EGLLD] = concat(char(34), replace(cast([BSID].[EGLLD] as nvarchar(3)), char(34), char(0)), char(34)),
	 [RSTGR] = concat(char(34), replace(cast([BSID].[RSTGR] as nvarchar(3)), char(34), char(0)), char(34)),
	 [XNOZA] = concat(char(34), replace(cast([BSID].[XNOZA] as nvarchar(1)), char(34), char(0)), char(34)),
	 [VERTT] = concat(char(34), replace(cast([BSID].[VERTT] as nvarchar(1)), char(34), char(0)), char(34)),
	 [VERTN] = concat(char(34), replace(cast([BSID].[VERTN] as nvarchar(13)), char(34), char(0)), char(34)),
	 [VBEWA] = concat(char(34), replace(cast([BSID].[VBEWA] as nvarchar(4)), char(34), char(0)), char(34)),
	 [WVERW] = concat(char(34), replace(cast([BSID].[WVERW] as nvarchar(1)), char(34), char(0)), char(34)),
	 [PROJK] = concat(char(34), replace(cast([BSID].[PROJK] as nvarchar(8)), char(34), char(0)), char(34)),
	 [FIPOS] = concat(char(34), replace(cast([BSID].[FIPOS] as nvarchar(14)), char(34), char(0)), char(34)),
	 [NPLNR] = concat(char(34), replace(cast([BSID].[NPLNR] as nvarchar(12)), char(34), char(0)), char(34)),
	 [AUFPL] = concat(char(34), replace(cast([BSID].[AUFPL] as nvarchar(10)), char(34), char(0)), char(34)),
	 [APLZL] = concat(char(34), replace(cast([BSID].[APLZL] as nvarchar(8)), char(34), char(0)), char(34)),
	 [XEGDR] = concat(char(34), replace(cast([BSID].[XEGDR] as nvarchar(1)), char(34), char(0)), char(34)),
	 [DMBE2] = cast([BSID].[DMBE2] as varchar(36)),
	 [DMBE3] = cast([BSID].[DMBE3] as varchar(36)),
	 [DMB21] = cast([BSID].[DMB21] as varchar(36)),
	 [DMB22] = cast([BSID].[DMB22] as varchar(36)),
	 [DMB23] = cast([BSID].[DMB23] as varchar(36)),
	 [DMB31] = cast([BSID].[DMB31] as varchar(36)),
	 [DMB32] = cast([BSID].[DMB32] as varchar(36)),
	 [DMB33] = cast([BSID].[DMB33] as varchar(36)),
	 [BDIF3] = cast([BSID].[BDIF3] as varchar(36)),
	 [XRAGL] = concat(char(34), replace(cast([BSID].[XRAGL] as nvarchar(1)), char(34), char(0)), char(34)),
	 [UZAWE] = concat(char(34), replace(cast([BSID].[UZAWE] as nvarchar(2)), char(34), char(0)), char(34)),
	 [XSTOV] = concat(char(34), replace(cast([BSID].[XSTOV] as nvarchar(1)), char(34), char(0)), char(34)),
	 [MWST2] = cast([BSID].[MWST2] as varchar(36)),
	 [MWST3] = cast([BSID].[MWST3] as varchar(36)),
	 [SKNT2] = cast([BSID].[SKNT2] as varchar(36)),
	 [SKNT3] = cast([BSID].[SKNT3] as varchar(36)),
	 [XREF1] = concat(char(34), replace(cast([BSID].[XREF1] as nvarchar(12)), char(34), char(0)), char(34)),
	 [XREF2] = concat(char(34), replace(cast([BSID].[XREF2] as nvarchar(12)), char(34), char(0)), char(34)),
	 [XARCH] = concat(char(34), replace(cast([BSID].[XARCH] as nvarchar(1)), char(34), char(0)), char(34)),
	 [PSWSL] = concat(char(34), replace(cast([BSID].[PSWSL] as nvarchar(5)), char(34), char(0)), char(34)),
	 [PSWBT] = cast([BSID].[PSWBT] as varchar(36)),
	 [LZBKZ] = concat(char(34), replace(cast([BSID].[LZBKZ] as nvarchar(3)), char(34), char(0)), char(34)),
	 [LANDL] = concat(char(34), replace(cast([BSID].[LANDL] as nvarchar(3)), char(34), char(0)), char(34)),
	 [IMKEY] = concat(char(34), replace(cast([BSID].[IMKEY] as nvarchar(8)), char(34), char(0)), char(34)),
	 [VBEL2] = concat(char(34), replace(cast([BSID].[VBEL2] as nvarchar(10)), char(34), char(0)), char(34)),
	 [VPOS2] = concat(char(34), replace(cast([BSID].[VPOS2] as nvarchar(6)), char(34), char(0)), char(34)),
	 [POSN2] = concat(char(34), replace(cast([BSID].[POSN2] as nvarchar(6)), char(34), char(0)), char(34)),
	 [ETEN2] = concat(char(34), replace(cast([BSID].[ETEN2] as nvarchar(4)), char(34), char(0)), char(34)),
	 [FISTL] = concat(char(34), replace(cast([BSID].[FISTL] as nvarchar(16)), char(34), char(0)), char(34)),
	 [GEBER] = concat(char(34), replace(cast([BSID].[GEBER] as nvarchar(10)), char(34), char(0)), char(34)),
	 [DABRZ] = concat(char(34), replace(cast([BSID].[DABRZ] as nvarchar(8)), char(34), char(0)), char(34)),
	 [XNEGP] = concat(char(34), replace(cast([BSID].[XNEGP] as nvarchar(1)), char(34), char(0)), char(34)),
	 [KOSTL] = concat(char(34), replace(cast([BSID].[KOSTL] as nvarchar(10)), char(34), char(0)), char(34)),
	 [RFZEI] = concat(char(34), replace(cast([BSID].[RFZEI] as nvarchar(3)), char(34), char(0)), char(34)),
	 [KKBER] = concat(char(34), replace(cast([BSID].[KKBER] as nvarchar(4)), char(34), char(0)), char(34)),
	 [EMPFB] = concat(char(34), replace(cast([BSID].[EMPFB] as nvarchar(10)), char(34), char(0)), char(34)),
	 [PRCTR] = concat(char(34), replace(cast([BSID].[PRCTR] as nvarchar(10)), char(34), char(0)), char(34)),
	 [XREF3] = concat(char(34), replace(cast([BSID].[XREF3] as nvarchar(20)), char(34), char(0)), char(34)),
	 [QSSKZ] = concat(char(34), replace(cast([BSID].[QSSKZ] as nvarchar(2)), char(34), char(0)), char(34)),
	 [ZINKZ] = concat(char(34), replace(cast([BSID].[ZINKZ] as nvarchar(2)), char(34), char(0)), char(34)),
	 [DTWS1] = concat(char(34), replace(cast([BSID].[DTWS1] as nvarchar(2)), char(34), char(0)), char(34)),
	 [DTWS2] = concat(char(34), replace(cast([BSID].[DTWS2] as nvarchar(2)), char(34), char(0)), char(34)),
	 [DTWS3] = concat(char(34), replace(cast([BSID].[DTWS3] as nvarchar(2)), char(34), char(0)), char(34)),
	 [DTWS4] = concat(char(34), replace(cast([BSID].[DTWS4] as nvarchar(2)), char(34), char(0)), char(34)),
	 [XPYPR] = concat(char(34), replace(cast([BSID].[XPYPR] as nvarchar(1)), char(34), char(0)), char(34)),
	 [KIDNO] = concat(char(34), replace(cast([BSID].[KIDNO] as nvarchar(30)), char(34), char(0)), char(34)),
	 [ABSBT] = cast([BSID].[ABSBT] as varchar(36)),
	 [CCBTC] = concat(char(34), replace(cast([BSID].[CCBTC] as nvarchar(10)), char(34), char(0)), char(34)),
	 [PYCUR] = concat(char(34), replace(cast([BSID].[PYCUR] as nvarchar(5)), char(34), char(0)), char(34)),
	 [PYAMT] = cast([BSID].[PYAMT] as varchar(36)),
	 [BUPLA] = concat(char(34), replace(cast([BSID].[BUPLA] as nvarchar(4)), char(34), char(0)), char(34)),
	 [SECCO] = concat(char(34), replace(cast([BSID].[SECCO] as nvarchar(4)), char(34), char(0)), char(34)),
	 [CESSION_KZ] = concat(char(34), replace(cast([BSID].[CESSION_KZ] as nvarchar(2)), char(34), char(0)), char(34)),
	 [PPDIFF] = cast([BSID].[PPDIFF] as varchar(36)),
	 [PPDIF2] = cast([BSID].[PPDIF2] as varchar(36)),
	 [PPDIF3] = cast([BSID].[PPDIF3] as varchar(36)),
	 [KBLNR] = concat(char(34), replace(cast([BSID].[KBLNR] as nvarchar(10)), char(34), char(0)), char(34)),
	 [KBLPOS] = concat(char(34), replace(cast([BSID].[KBLPOS] as nvarchar(3)), char(34), char(0)), char(34)),
	 [GRANT_NBR] = concat(char(34), replace(cast([BSID].[GRANT_NBR] as nvarchar(20)), char(34), char(0)), char(34)),
	 [GMVKZ] = concat(char(34), replace(cast([BSID].[GMVKZ] as nvarchar(1)), char(34), char(0)), char(34)),
	 [SRTYPE] = concat(char(34), replace(cast([BSID].[SRTYPE] as nvarchar(2)), char(34), char(0)), char(34)),
	 [LOTKZ] = concat(char(34), replace(cast([BSID].[LOTKZ] as nvarchar(10)), char(34), char(0)), char(34)),
	 [FKBER] = concat(char(34), replace(cast([BSID].[FKBER] as nvarchar(16)), char(34), char(0)), char(34)),
	 [INTRENO] = concat(char(34), replace(cast([BSID].[INTRENO] as nvarchar(13)), char(34), char(0)), char(34)),
	 [PPRCT] = concat(char(34), replace(cast([BSID].[PPRCT] as nvarchar(10)), char(34), char(0)), char(34)),
	 [BUZID] = concat(char(34), replace(cast([BSID].[BUZID] as nvarchar(1)), char(34), char(0)), char(34)),
	 [AUGGJ] = concat(char(34), replace(cast([BSID].[AUGGJ] as nvarchar(4)), char(34), char(0)), char(34)),
	 [HKTID] = concat(char(34), replace(cast([BSID].[HKTID] as nvarchar(5)), char(34), char(0)), char(34)),
	 [BUDGET_PD] = concat(char(34), replace(cast([BSID].[BUDGET_PD] as nvarchar(10)), char(34), char(0)), char(34)),
	 [PAYS_PROV] = concat(char(34), replace(cast([BSID].[PAYS_PROV] as nvarchar(4)), char(34), char(0)), char(34)),
	 [PAYS_TRAN] = concat(char(34), replace(cast([BSID].[PAYS_TRAN] as nvarchar(35)), char(34), char(0)), char(34)),
	 [MNDID] = concat(char(34), replace(cast([BSID].[MNDID] as nvarchar(35)), char(34), char(0)), char(34)),
	 [KONTT] = concat(char(34), replace(cast([BSID].[KONTT] as nvarchar(2)), char(34), char(0)), char(34)),
	 [KONTL] = concat(char(34), replace(cast([BSID].[KONTL] as nvarchar(50)), char(34), char(0)), char(34)),
	 [UEBGDAT] = concat(char(34), replace(cast([BSID].[UEBGDAT] as nvarchar(8)), char(34), char(0)), char(34)),
	 [VNAME] = concat(char(34), replace(cast([BSID].[VNAME] as nvarchar(6)), char(34), char(0)), char(34)),
	 [EGRUP] = concat(char(34), replace(cast([BSID].[EGRUP] as nvarchar(3)), char(34), char(0)), char(34)),
	 [BTYPE] = concat(char(34), replace(cast([BSID].[BTYPE] as nvarchar(2)), char(34), char(0)), char(34)),
	 [PROPMANO] = concat(char(34), replace(cast([BSID].[PROPMANO] as nvarchar(13)), char(34), char(0)), char(34))
from SAP_REPO.dbo.BSID