select
	 [MANDT] = concat(char(34), replace(cast([T528T].[MANDT] as nvarchar(3)), char(34), char(0)), char(34)),
	 [SPRSL] = concat(char(34), replace(cast([T528T].[SPRSL] as nvarchar(1)), char(34), char(0)), char(34)),
	 [OTYPE] = concat(char(34), replace(cast([T528T].[OTYPE] as nvarchar(2)), char(34), char(0)), char(34)),
	 [PLANS] = concat(char(34), replace(cast([T528T].[PLANS] as nvarchar(8)), char(34), char(0)), char(34)),
	 [ENDDA] = concat(char(34), replace(cast([T528T].[ENDDA] as nvarchar(8)), char(34), char(0)), char(34)),
	 [BEGDA] = concat(char(34), replace(cast([T528T].[BEGDA] as nvarchar(8)), char(34), char(0)), char(34)),
	 [PLSTX] = concat(char(34), replace(cast([T528T].[PLSTX] as nvarchar(25)), char(34), char(0)), char(34)),
	 [MAINT] = concat(char(34), replace(cast([T528T].[MAINT] as nvarchar(1)), char(34), char(0)), char(34))
from SAP_REPO.dbo.T528T with(nolock)