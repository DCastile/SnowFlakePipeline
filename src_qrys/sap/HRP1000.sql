select
	 [MANDT] = concat(char(34), replace(cast([HRP1000].[MANDT] as nvarchar(3)), char(34), char(0)), char(34)),
	 [PLVAR] = concat(char(34), replace(cast([HRP1000].[PLVAR] as nvarchar(2)), char(34), char(0)), char(34)),
	 [OTYPE] = concat(char(34), replace(cast([HRP1000].[OTYPE] as nvarchar(2)), char(34), char(0)), char(34)),
	 [OBJID] = concat(char(34), replace(cast([HRP1000].[OBJID] as nvarchar(8)), char(34), char(0)), char(34)),
	 [ISTAT] = concat(char(34), replace(cast([HRP1000].[ISTAT] as nvarchar(1)), char(34), char(0)), char(34)),
	 [BEGDA] = concat(char(34), replace(cast([HRP1000].[BEGDA] as nvarchar(8)), char(34), char(0)), char(34)),
	 [ENDDA] = concat(char(34), replace(cast([HRP1000].[ENDDA] as nvarchar(8)), char(34), char(0)), char(34)),
	 [LANGU] = concat(char(34), replace(cast([HRP1000].[LANGU] as nvarchar(1)), char(34), char(0)), char(34)),
	 [SEQNR] = concat(char(34), replace(cast([HRP1000].[SEQNR] as nvarchar(3)), char(34), char(0)), char(34)),
	 [OTJID] = concat(char(34), replace(cast([HRP1000].[OTJID] as nvarchar(10)), char(34), char(0)), char(34)),
	 [INFTY] = concat(char(34), replace(cast([HRP1000].[INFTY] as nvarchar(4)), char(34), char(0)), char(34)),
	 [AEDTM] = concat(char(34), replace(cast([HRP1000].[AEDTM] as nvarchar(8)), char(34), char(0)), char(34)),
	 [UNAME] = concat(char(34), replace(cast([HRP1000].[UNAME] as nvarchar(12)), char(34), char(0)), char(34)),
	 [REASN] = concat(char(34), replace(cast([HRP1000].[REASN] as nvarchar(2)), char(34), char(0)), char(34)),
	 [HISTO] = concat(char(34), replace(cast([HRP1000].[HISTO] as nvarchar(1)), char(34), char(0)), char(34)),
	 [ITXNR] = concat(char(34), replace(cast([HRP1000].[ITXNR] as nvarchar(8)), char(34), char(0)), char(34)),
	 [SHORT] = concat(char(34), replace(cast([HRP1000].[SHORT] as nvarchar(12)), char(34), char(0)), char(34)),
	 [STEXT] = concat(char(34), replace(cast([HRP1000].[STEXT] as nvarchar(40)), char(34), char(0)), char(34)),
	 [GDATE] = concat(char(34), replace(cast([HRP1000].[GDATE] as nvarchar(8)), char(34), char(0)), char(34)),
	 [MC_SHORT] = concat(char(34), replace(cast([HRP1000].[MC_SHORT] as nvarchar(12)), char(34), char(0)), char(34)),
	 [MC_STEXT] = concat(char(34), replace(cast([HRP1000].[MC_STEXT] as nvarchar(40)), char(34), char(0)), char(34)),
	 [MC_SEARK] = concat(char(34), replace(cast([HRP1000].[MC_SEARK] as nvarchar(52)), char(34), char(0)), char(34))
from SAP_REPO.dbo.HRP1000 with(nolock)