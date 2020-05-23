select
	 [MANDT] = concat(char(34), replace(cast([T003T].[MANDT] as nvarchar(3)), char(34), char(0)), char(34)),
	 [SPRAS] = concat(char(34), replace(cast([T003T].[SPRAS] as nvarchar(1)), char(34), char(0)), char(34)),
	 [BLART] = concat(char(34), replace(cast([T003T].[BLART] as nvarchar(2)), char(34), char(0)), char(34)),
	 [LTEXT] = concat(char(34), replace(cast([T003T].[LTEXT] as nvarchar(20)), char(34), char(0)), char(34))
from SAP_REPO.dbo.T003T