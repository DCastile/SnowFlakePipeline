select
	 [MANDT] = concat(char(34), replace(cast([T179T].[MANDT] as nvarchar(3)), char(34), char(0)), char(34)),
	 [SPRAS] = concat(char(34), replace(cast([T179T].[SPRAS] as nvarchar(1)), char(34), char(0)), char(34)),
	 [PRODH] = concat(char(34), replace(cast([T179T].[PRODH] as nvarchar(18)), char(34), char(0)), char(34)),
	 [VTEXT] = concat(char(34), replace(cast([T179T].[VTEXT] as nvarchar(40)), char(34), char(0)), char(34))
from SAP_REPO.dbo.T179T