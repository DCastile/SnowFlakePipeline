select
	 [MANDT] = concat(char(34), replace(cast([T527X].[MANDT] as nvarchar(3)), char(34), char(0)), char(34)),
	 [SPRSL] = concat(char(34), replace(cast([T527X].[SPRSL] as nvarchar(1)), char(34), char(0)), char(34)),
	 [ORGEH] = concat(char(34), replace(cast([T527X].[ORGEH] as nvarchar(8)), char(34), char(0)), char(34)),
	 [ENDDA] = concat(char(34), replace(cast([T527X].[ENDDA] as nvarchar(8)), char(34), char(0)), char(34)),
	 [BEGDA] = concat(char(34), replace(cast([T527X].[BEGDA] as nvarchar(8)), char(34), char(0)), char(34)),
	 [ORGTX] = concat(char(34), replace(cast([T527X].[ORGTX] as nvarchar(25)), char(34), char(0)), char(34)),
	 [MAINT] = concat(char(34), replace(cast([T527X].[MAINT] as nvarchar(1)), char(34), char(0)), char(34))
from SAP_REPO.dbo.T527X with(nolock)