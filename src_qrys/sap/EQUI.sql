select
	 [MANDT] = concat(char(34), replace(cast([EQUI].[MANDT] as nvarchar(3)), char(34), char(0)), char(34)),
	 [EQUNR] = concat(char(34), replace(cast([EQUI].[EQUNR] as nvarchar(18)), char(34), char(0)), char(34)),
	 [ERDAT] = concat(char(34), replace(cast([EQUI].[ERDAT] as nvarchar(8)), char(34), char(0)), char(34)),
	 [ERNAM] = concat(char(34), replace(cast([EQUI].[ERNAM] as nvarchar(12)), char(34), char(0)), char(34)),
	 [EQASP] = concat(char(34), replace(cast([EQUI].[EQASP] as nvarchar(1)), char(34), char(0)), char(34)),
	 [AEDAT] = concat(char(34), replace(cast([EQUI].[AEDAT] as nvarchar(8)), char(34), char(0)), char(34)),
	 [AENAM] = concat(char(34), replace(cast([EQUI].[AENAM] as nvarchar(12)), char(34), char(0)), char(34)),
	 [BEGRU] = concat(char(34), replace(cast([EQUI].[BEGRU] as nvarchar(4)), char(34), char(0)), char(34)),
	 [EQTYP] = concat(char(34), replace(cast([EQUI].[EQTYP] as nvarchar(1)), char(34), char(0)), char(34)),
	 [EQART] = concat(char(34), replace(cast([EQUI].[EQART] as nvarchar(10)), char(34), char(0)), char(34)),
	 [LVORM] = concat(char(34), replace(cast([EQUI].[LVORM] as nvarchar(1)), char(34), char(0)), char(34)),
	 [INVNR] = concat(char(34), replace(cast([EQUI].[INVNR] as nvarchar(25)), char(34), char(0)), char(34)),
	 [GROES] = concat(char(34), replace(cast([EQUI].[GROES] as nvarchar(18)), char(34), char(0)), char(34)),
	 [BRGEW] = cast([EQUI].[BRGEW] as varchar(36)),
	 [GEWEI] = concat(char(34), replace(cast([EQUI].[GEWEI] as nvarchar(3)), char(34), char(0)), char(34)),
	 [ANSDT] = concat(char(34), replace(cast([EQUI].[ANSDT] as nvarchar(8)), char(34), char(0)), char(34)),
	 [ANSWT] = cast([EQUI].[ANSWT] as varchar(36)),
	 [WAERS] = concat(char(34), replace(cast([EQUI].[WAERS] as nvarchar(5)), char(34), char(0)), char(34)),
	 [ELIEF] = concat(char(34), replace(cast([EQUI].[ELIEF] as nvarchar(10)), char(34), char(0)), char(34)),
	 [GWLEN] = concat(char(34), replace(cast([EQUI].[GWLEN] as nvarchar(8)), char(34), char(0)), char(34)),
	 [GWLDT] = concat(char(34), replace(cast([EQUI].[GWLDT] as nvarchar(8)), char(34), char(0)), char(34)),
	 [WDBWT] = cast([EQUI].[WDBWT] as varchar(36)),
	 [HERST] = concat(char(34), replace(cast([EQUI].[HERST] as nvarchar(30)), char(34), char(0)), char(34)),
	 [HERLD] = concat(char(34), replace(cast([EQUI].[HERLD] as nvarchar(3)), char(34), char(0)), char(34)),
	 [HZEIN] = concat(char(34), replace(cast([EQUI].[HZEIN] as nvarchar(30)), char(34), char(0)), char(34)),
	 [SERGE] = concat(char(34), replace(cast([EQUI].[SERGE] as nvarchar(30)), char(34), char(0)), char(34)),
	 [TYPBZ] = concat(char(34), replace(cast([EQUI].[TYPBZ] as nvarchar(20)), char(34), char(0)), char(34)),
	 [BAUJJ] = concat(char(34), replace(cast([EQUI].[BAUJJ] as nvarchar(4)), char(34), char(0)), char(34)),
	 [BAUMM] = concat(char(34), replace(cast([EQUI].[BAUMM] as nvarchar(2)), char(34), char(0)), char(34)),
	 [APLKZ] = concat(char(34), replace(cast([EQUI].[APLKZ] as nvarchar(1)), char(34), char(0)), char(34)),
	 [AULDT] = concat(char(34), replace(cast([EQUI].[AULDT] as nvarchar(8)), char(34), char(0)), char(34)),
	 [INBDT] = concat(char(34), replace(cast([EQUI].[INBDT] as nvarchar(8)), char(34), char(0)), char(34)),
	 [GERNR] = concat(char(34), replace(cast([EQUI].[GERNR] as nvarchar(18)), char(34), char(0)), char(34)),
	 [EQLFN] = concat(char(34), replace(cast([EQUI].[EQLFN] as nvarchar(3)), char(34), char(0)), char(34)),
	 [GWLDV] = concat(char(34), replace(cast([EQUI].[GWLDV] as nvarchar(8)), char(34), char(0)), char(34)),
	 [EQDAT] = concat(char(34), replace(cast([EQUI].[EQDAT] as nvarchar(8)), char(34), char(0)), char(34)),
	 [EQBER] = concat(char(34), replace(cast([EQUI].[EQBER] as nvarchar(30)), char(34), char(0)), char(34)),
	 [EQNUM] = concat(char(34), replace(cast([EQUI].[EQNUM] as nvarchar(9)), char(34), char(0)), char(34)),
	 [OBJNR] = concat(char(34), replace(cast([EQUI].[OBJNR] as nvarchar(22)), char(34), char(0)), char(34)),
	 [EQSNR] = concat(char(34), replace(cast([EQUI].[EQSNR] as nvarchar(18)), char(34), char(0)), char(34)),
	 [CUOBJ] = concat(char(34), replace(cast([EQUI].[CUOBJ] as nvarchar(18)), char(34), char(0)), char(34)),
	 [KRFKZ] = concat(char(34), replace(cast([EQUI].[KRFKZ] as nvarchar(1)), char(34), char(0)), char(34)),
	 [KMATN] = concat(char(34), replace(cast([EQUI].[KMATN] as nvarchar(18)), char(34), char(0)), char(34)),
	 [MATNR] = concat(char(34), replace(cast([EQUI].[MATNR] as nvarchar(18)), char(34), char(0)), char(34)),
	 [SERNR] = concat(char(34), replace(cast([EQUI].[SERNR] as nvarchar(18)), char(34), char(0)), char(34)),
	 [WERK] = concat(char(34), replace(cast([EQUI].[WERK] as nvarchar(4)), char(34), char(0)), char(34)),
	 [LAGER] = concat(char(34), replace(cast([EQUI].[LAGER] as nvarchar(4)), char(34), char(0)), char(34)),
	 [CHARGE] = concat(char(34), replace(cast([EQUI].[CHARGE] as nvarchar(10)), char(34), char(0)), char(34)),
	 [KUNDE] = concat(char(34), replace(cast([EQUI].[KUNDE] as nvarchar(10)), char(34), char(0)), char(34)),
	 [WARPL] = concat(char(34), replace(cast([EQUI].[WARPL] as nvarchar(12)), char(34), char(0)), char(34)),
	 [IMRC_POINT] = concat(char(34), replace(cast([EQUI].[IMRC_POINT] as nvarchar(12)), char(34), char(0)), char(34)),
	 [REVLV] = concat(char(34), replace(cast([EQUI].[REVLV] as nvarchar(2)), char(34), char(0)), char(34)),
	 [MGANR] = concat(char(34), replace(cast([EQUI].[MGANR] as nvarchar(20)), char(34), char(0)), char(34)),
	 [BEGRUI] = concat(char(34), replace(cast([EQUI].[BEGRUI] as nvarchar(1)), char(34), char(0)), char(34)),
	 [S_EQUI] = concat(char(34), replace(cast([EQUI].[S_EQUI] as nvarchar(1)), char(34), char(0)), char(34)),
	 [S_SERIAL] = concat(char(34), replace(cast([EQUI].[S_SERIAL] as nvarchar(1)), char(34), char(0)), char(34)),
	 [S_KONFI] = concat(char(34), replace(cast([EQUI].[S_KONFI] as nvarchar(1)), char(34), char(0)), char(34)),
	 [S_SALE] = concat(char(34), replace(cast([EQUI].[S_SALE] as nvarchar(1)), char(34), char(0)), char(34)),
	 [S_FHM] = concat(char(34), replace(cast([EQUI].[S_FHM] as nvarchar(1)), char(34), char(0)), char(34)),
	 [S_ELSE] = concat(char(34), replace(cast([EQUI].[S_ELSE] as nvarchar(1)), char(34), char(0)), char(34)),
	 [S_ISU] = concat(char(34), replace(cast([EQUI].[S_ISU] as nvarchar(1)), char(34), char(0)), char(34)),
	 [S_EQBS] = concat(char(34), replace(cast([EQUI].[S_EQBS] as nvarchar(1)), char(34), char(0)), char(34)),
	 [S_FLEET] = concat(char(34), replace(cast([EQUI].[S_FLEET] as nvarchar(1)), char(34), char(0)), char(34)),
	 [BSTVP] = concat(char(34), replace(cast([EQUI].[BSTVP] as nvarchar(1)), char(34), char(0)), char(34)),
	 [SPARTE] = concat(char(34), replace(cast([EQUI].[SPARTE] as nvarchar(2)), char(34), char(0)), char(34)),
	 [HANDLE] = concat(char(34), replace(cast([EQUI].[HANDLE] as nvarchar(22)), char(34), char(0)), char(34)),
	 [TSEGTP] = concat(char(34), replace(cast([EQUI].[TSEGTP] as nvarchar(10)), char(34), char(0)), char(34)),
	 [EMATN] = concat(char(34), replace(cast([EQUI].[EMATN] as nvarchar(18)), char(34), char(0)), char(34)),
	 [ACT_CHANGE_AA] = concat(char(34), replace(cast([EQUI].[ACT_CHANGE_AA] as nvarchar(1)), char(34), char(0)), char(34)),
	 [S_CC] = concat(char(34), replace(cast([EQUI].[S_CC] as nvarchar(1)), char(34), char(0)), char(34)),
	 [DATLWB] = concat(char(34), replace(cast([EQUI].[DATLWB] as nvarchar(8)), char(34), char(0)), char(34)),
	 [UII] = concat(char(34), replace(cast([EQUI].[UII] as nvarchar(72)), char(34), char(0)), char(34)),
	 [IUID_TYPE] = concat(char(34), replace(cast([EQUI].[IUID_TYPE] as nvarchar(10)), char(34), char(0)), char(34)),
	 [UII_PLANT] = concat(char(34), replace(cast([EQUI].[UII_PLANT] as nvarchar(4)), char(34), char(0)), char(34)),
	 [EQEXT_ACTIVE] = concat(char(34), replace(cast([EQUI].[EQEXT_ACTIVE] as nvarchar(1)), char(34), char(0)), char(34)),
	 [EQUI_SRTYPE] = concat(char(34), replace(cast([EQUI].[EQUI_SRTYPE] as nvarchar(10)), char(34), char(0)), char(34)),
	 [EQUI_SNTYPE] = concat(char(34), replace(cast([EQUI].[EQUI_SNTYPE] as nvarchar(2)), char(34), char(0)), char(34)),
	 [EQLB_DUTY] = concat(char(34), replace(cast([EQUI].[EQLB_DUTY] as nvarchar(1)), char(34), char(0)), char(34)),
	 [EQLB_HIDE] = concat(char(34), replace(cast([EQUI].[EQLB_HIDE] as nvarchar(1)), char(34), char(0)), char(34))
from SAP_REPO.dbo.EQUI with(nolock)