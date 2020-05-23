select
	 [MANDT] = concat(char(34), replace(cast([TVLVT].[MANDT] as nvarchar(3)), char(34), char(0)), char(34)),
	 [SPRAS] = concat(char(34), replace(cast([TVLVT].[SPRAS] as nvarchar(1)), char(34), char(0)), char(34)),
	 [ABRVW] = concat(char(34), replace(cast([TVLVT].[ABRVW] as nvarchar(3)), char(34), char(0)), char(34)),
	 [BEZEI] = concat(char(34), replace(cast([TVLVT].[BEZEI] as nvarchar(20)), char(34), char(0)), char(34))
from SAP_REPO.dbo.TVLVT