select
	 [MANDT] = concat(char(34), replace(cast([TVAPT].[MANDT] as nvarchar(3)), char(34), char(0)), char(34)),
	 [SPRAS] = concat(char(34), replace(cast([TVAPT].[SPRAS] as nvarchar(1)), char(34), char(0)), char(34)),
	 [PSTYV] = concat(char(34), replace(cast([TVAPT].[PSTYV] as nvarchar(4)), char(34), char(0)), char(34)),
	 [VTEXT] = concat(char(34), replace(cast([TVAPT].[VTEXT] as nvarchar(20)), char(34), char(0)), char(34))
from SAP_REPO.dbo.TVAPT with(nolock)