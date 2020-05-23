select
	 [SPRAS] = concat(char(34), replace(cast([T158W].[SPRAS] as nvarchar(1)), char(34), char(0)), char(34)),
	 [VGART] = concat(char(34), replace(cast([T158W].[VGART] as nvarchar(2)), char(34), char(0)), char(34)),
	 [LTEXT] = concat(char(34), replace(cast([T158W].[LTEXT] as nvarchar(40)), char(34), char(0)), char(34))
from SAP_REPO.dbo.T158W with(nolock)