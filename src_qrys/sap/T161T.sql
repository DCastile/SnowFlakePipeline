select
	 [MANDT] = concat(char(34), replace(cast([T161T].[MANDT] as nvarchar(3)), char(34), char(0)), char(34)),
	 [SPRAS] = concat(char(34), replace(cast([T161T].[SPRAS] as nvarchar(1)), char(34), char(0)), char(34)),
	 [BSART] = concat(char(34), replace(cast([T161T].[BSART] as nvarchar(4)), char(34), char(0)), char(34)),
	 [BSTYP] = concat(char(34), replace(cast([T161T].[BSTYP] as nvarchar(1)), char(34), char(0)), char(34)),
	 [BATXT] = concat(char(34), replace(cast([T161T].[BATXT] as nvarchar(20)), char(34), char(0)), char(34))
from SAP_REPO.dbo.T161T with(nolock)