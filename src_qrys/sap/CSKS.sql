select
	 [MANDT] = concat(char(34), replace(cast([CSKS].[MANDT] as nvarchar(3)), char(34), char(0)), char(34)),
	 [KOKRS] = concat(char(34), replace(cast([CSKS].[KOKRS] as nvarchar(4)), char(34), char(0)), char(34)),
	 [KOSTL] = concat(char(34), replace(cast([CSKS].[KOSTL] as nvarchar(10)), char(34), char(0)), char(34)),
	 [DATBI] = concat(char(34), replace(cast([CSKS].[DATBI] as nvarchar(8)), char(34), char(0)), char(34)),
	 [DATAB] = concat(char(34), replace(cast([CSKS].[DATAB] as nvarchar(8)), char(34), char(0)), char(34)),
	 [BKZKP] = concat(char(34), replace(cast([CSKS].[BKZKP] as nvarchar(1)), char(34), char(0)), char(34)),
	 [PKZKP] = concat(char(34), replace(cast([CSKS].[PKZKP] as nvarchar(1)), char(34), char(0)), char(34)),
	 [BUKRS] = concat(char(34), replace(cast([CSKS].[BUKRS] as nvarchar(4)), char(34), char(0)), char(34)),
	 [GSBER] = concat(char(34), replace(cast([CSKS].[GSBER] as nvarchar(4)), char(34), char(0)), char(34)),
	 [KOSAR] = concat(char(34), replace(cast([CSKS].[KOSAR] as nvarchar(1)), char(34), char(0)), char(34)),
	 [VERAK] = concat(char(34), replace(cast([CSKS].[VERAK] as nvarchar(20)), char(34), char(0)), char(34)),
	 [VERAK_USER] = concat(char(34), replace(cast([CSKS].[VERAK_USER] as nvarchar(12)), char(34), char(0)), char(34)),
	 [WAERS] = concat(char(34), replace(cast([CSKS].[WAERS] as nvarchar(5)), char(34), char(0)), char(34)),
	 [KALSM] = concat(char(34), replace(cast([CSKS].[KALSM] as nvarchar(6)), char(34), char(0)), char(34)),
	 [TXJCD] = concat(char(34), replace(cast([CSKS].[TXJCD] as nvarchar(15)), char(34), char(0)), char(34)),
	 [PRCTR] = concat(char(34), replace(cast([CSKS].[PRCTR] as nvarchar(10)), char(34), char(0)), char(34)),
	 [WERKS] = concat(char(34), replace(cast([CSKS].[WERKS] as nvarchar(4)), char(34), char(0)), char(34)),
	 [LOGSYSTEM] = concat(char(34), replace(cast([CSKS].[LOGSYSTEM] as nvarchar(10)), char(34), char(0)), char(34)),
	 [ERSDA] = concat(char(34), replace(cast([CSKS].[ERSDA] as nvarchar(8)), char(34), char(0)), char(34)),
	 [USNAM] = concat(char(34), replace(cast([CSKS].[USNAM] as nvarchar(12)), char(34), char(0)), char(34)),
	 [BKZKS] = concat(char(34), replace(cast([CSKS].[BKZKS] as nvarchar(1)), char(34), char(0)), char(34)),
	 [BKZER] = concat(char(34), replace(cast([CSKS].[BKZER] as nvarchar(1)), char(34), char(0)), char(34)),
	 [BKZOB] = concat(char(34), replace(cast([CSKS].[BKZOB] as nvarchar(1)), char(34), char(0)), char(34)),
	 [PKZKS] = concat(char(34), replace(cast([CSKS].[PKZKS] as nvarchar(1)), char(34), char(0)), char(34)),
	 [PKZER] = concat(char(34), replace(cast([CSKS].[PKZER] as nvarchar(1)), char(34), char(0)), char(34)),
	 [VMETH] = concat(char(34), replace(cast([CSKS].[VMETH] as nvarchar(2)), char(34), char(0)), char(34)),
	 [MGEFL] = concat(char(34), replace(cast([CSKS].[MGEFL] as nvarchar(1)), char(34), char(0)), char(34)),
	 [ABTEI] = concat(char(34), replace(cast([CSKS].[ABTEI] as nvarchar(12)), char(34), char(0)), char(34)),
	 [NKOST] = concat(char(34), replace(cast([CSKS].[NKOST] as nvarchar(10)), char(34), char(0)), char(34)),
	 [KVEWE] = concat(char(34), replace(cast([CSKS].[KVEWE] as nvarchar(1)), char(34), char(0)), char(34)),
	 [KAPPL] = concat(char(34), replace(cast([CSKS].[KAPPL] as nvarchar(2)), char(34), char(0)), char(34)),
	 [KOSZSCHL] = concat(char(34), replace(cast([CSKS].[KOSZSCHL] as nvarchar(6)), char(34), char(0)), char(34)),
	 [LAND1] = concat(char(34), replace(cast([CSKS].[LAND1] as nvarchar(3)), char(34), char(0)), char(34)),
	 [ANRED] = concat(char(34), replace(cast([CSKS].[ANRED] as nvarchar(15)), char(34), char(0)), char(34)),
	 [NAME1] = concat(char(34), replace(cast([CSKS].[NAME1] as nvarchar(35)), char(34), char(0)), char(34)),
	 [NAME2] = concat(char(34), replace(cast([CSKS].[NAME2] as nvarchar(35)), char(34), char(0)), char(34)),
	 [NAME3] = concat(char(34), replace(cast([CSKS].[NAME3] as nvarchar(35)), char(34), char(0)), char(34)),
	 [NAME4] = concat(char(34), replace(cast([CSKS].[NAME4] as nvarchar(35)), char(34), char(0)), char(34)),
	 [ORT01] = concat(char(34), replace(cast([CSKS].[ORT01] as nvarchar(35)), char(34), char(0)), char(34)),
	 [ORT02] = concat(char(34), replace(cast([CSKS].[ORT02] as nvarchar(35)), char(34), char(0)), char(34)),
	 [STRAS] = concat(char(34), replace(cast([CSKS].[STRAS] as nvarchar(35)), char(34), char(0)), char(34)),
	 [PFACH] = concat(char(34), replace(cast([CSKS].[PFACH] as nvarchar(10)), char(34), char(0)), char(34)),
	 [PSTLZ] = concat(char(34), replace(cast([CSKS].[PSTLZ] as nvarchar(10)), char(34), char(0)), char(34)),
	 [PSTL2] = concat(char(34), replace(cast([CSKS].[PSTL2] as nvarchar(10)), char(34), char(0)), char(34)),
	 [REGIO] = concat(char(34), replace(cast([CSKS].[REGIO] as nvarchar(3)), char(34), char(0)), char(34)),
	 [SPRAS] = concat(char(34), replace(cast([CSKS].[SPRAS] as nvarchar(1)), char(34), char(0)), char(34)),
	 [TELBX] = concat(char(34), replace(cast([CSKS].[TELBX] as nvarchar(15)), char(34), char(0)), char(34)),
	 [TELF1] = concat(char(34), replace(cast([CSKS].[TELF1] as nvarchar(16)), char(34), char(0)), char(34)),
	 [TELF2] = concat(char(34), replace(cast([CSKS].[TELF2] as nvarchar(16)), char(34), char(0)), char(34)),
	 [TELFX] = concat(char(34), replace(cast([CSKS].[TELFX] as nvarchar(31)), char(34), char(0)), char(34)),
	 [TELTX] = concat(char(34), replace(cast([CSKS].[TELTX] as nvarchar(30)), char(34), char(0)), char(34)),
	 [TELX1] = concat(char(34), replace(cast([CSKS].[TELX1] as nvarchar(30)), char(34), char(0)), char(34)),
	 [DATLT] = concat(char(34), replace(cast([CSKS].[DATLT] as nvarchar(14)), char(34), char(0)), char(34)),
	 [DRNAM] = concat(char(34), replace(cast([CSKS].[DRNAM] as nvarchar(4)), char(34), char(0)), char(34)),
	 [KHINR] = concat(char(34), replace(cast([CSKS].[KHINR] as nvarchar(12)), char(34), char(0)), char(34)),
	 [CCKEY] = concat(char(34), replace(cast([CSKS].[CCKEY] as nvarchar(23)), char(34), char(0)), char(34)),
	 [KOMPL] = concat(char(34), replace(cast([CSKS].[KOMPL] as nvarchar(1)), char(34), char(0)), char(34)),
	 [STAKZ] = concat(char(34), replace(cast([CSKS].[STAKZ] as nvarchar(1)), char(34), char(0)), char(34)),
	 [OBJNR] = concat(char(34), replace(cast([CSKS].[OBJNR] as nvarchar(22)), char(34), char(0)), char(34)),
	 [FUNKT] = concat(char(34), replace(cast([CSKS].[FUNKT] as nvarchar(3)), char(34), char(0)), char(34)),
	 [AFUNK] = concat(char(34), replace(cast([CSKS].[AFUNK] as nvarchar(3)), char(34), char(0)), char(34)),
	 [CPI_TEMPL] = concat(char(34), replace(cast([CSKS].[CPI_TEMPL] as nvarchar(10)), char(34), char(0)), char(34)),
	 [CPD_TEMPL] = concat(char(34), replace(cast([CSKS].[CPD_TEMPL] as nvarchar(10)), char(34), char(0)), char(34)),
	 [FUNC_AREA] = concat(char(34), replace(cast([CSKS].[FUNC_AREA] as nvarchar(16)), char(34), char(0)), char(34)),
	 [SCI_TEMPL] = concat(char(34), replace(cast([CSKS].[SCI_TEMPL] as nvarchar(10)), char(34), char(0)), char(34)),
	 [SCD_TEMPL] = concat(char(34), replace(cast([CSKS].[SCD_TEMPL] as nvarchar(10)), char(34), char(0)), char(34)),
	 [VNAME] = concat(char(34), replace(cast([CSKS].[VNAME] as nvarchar(6)), char(34), char(0)), char(34)),
	 [RECID] = concat(char(34), replace(cast([CSKS].[RECID] as nvarchar(2)), char(34), char(0)), char(34)),
	 [ETYPE] = concat(char(34), replace(cast([CSKS].[ETYPE] as nvarchar(3)), char(34), char(0)), char(34)),
	 [JV_OTYPE] = concat(char(34), replace(cast([CSKS].[JV_OTYPE] as nvarchar(4)), char(34), char(0)), char(34)),
	 [JV_JIBCL] = concat(char(34), replace(cast([CSKS].[JV_JIBCL] as nvarchar(3)), char(34), char(0)), char(34)),
	 [JV_JIBSA] = concat(char(34), replace(cast([CSKS].[JV_JIBSA] as nvarchar(5)), char(34), char(0)), char(34)),
	 [FERC_IND] = concat(char(34), replace(cast([CSKS].[FERC_IND] as nvarchar(4)), char(34), char(0)), char(34))
from SAP_REPO.dbo.CSKS