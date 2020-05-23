select
	 [MANDT] = concat(char(34), replace(cast([ZTT_ZONE].[MANDT] as nvarchar(3)), char(34), char(0)), char(34)),
	 [WERKS] = concat(char(34), replace(cast([ZTT_ZONE].[WERKS] as nvarchar(4)), char(34), char(0)), char(34)),
	 [LGORT] = concat(char(34), replace(cast([ZTT_ZONE].[LGORT] as nvarchar(4)), char(34), char(0)), char(34)),
	 [ZZONE] = concat(char(34), replace(cast([ZTT_ZONE].[ZZONE] as nvarchar(20)), char(34), char(0)), char(34)),
	 [SLOC1] = concat(char(34), replace(cast([ZTT_ZONE].[SLOC1] as nvarchar(40)), char(34), char(0)), char(34)),
	 [SLOC2] = concat(char(34), replace(cast([ZTT_ZONE].[SLOC2] as nvarchar(40)), char(34), char(0)), char(34))
from SAP_REPO.dbo.ZTT_ZONE