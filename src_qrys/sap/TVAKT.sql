select
	 [MANDT] = concat(char(34), replace(cast([TVAKT].[MANDT] as nvarchar(3)), char(34), char(0)), char(34)),
	 [SPRAS] = concat(char(34), replace(cast([TVAKT].[SPRAS] as nvarchar(1)), char(34), char(0)), char(34)),
	 [AUART] = concat(char(34), replace(cast([TVAKT].[AUART] as nvarchar(4)), char(34), char(0)), char(34)),
	 [BEZEI] = concat(char(34), replace(cast([TVAKT].[BEZEI] as nvarchar(20)), char(34), char(0)), char(34)),
	 [TXT_BUTTON] = concat(char(34), replace(cast([TVAKT].[TXT_BUTTON] as nvarchar(20)), char(34), char(0)), char(34))
from SAP_REPO.dbo.TVAKT