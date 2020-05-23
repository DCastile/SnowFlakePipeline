select
	 [MANDT] = concat(char(34), replace(cast([KONDDP].[MANDT] as nvarchar(3)), char(34), char(0)), char(34)),
	 [KNUMH] = concat(char(34), replace(cast([KONDDP].[KNUMH] as nvarchar(10)), char(34), char(0)), char(34)),
	 [KPOSN] = concat(char(34), replace(cast([KONDDP].[KPOSN] as nvarchar(3)), char(34), char(0)), char(34)),
	 [SMATN] = concat(char(34), replace(cast([KONDDP].[SMATN] as nvarchar(18)), char(34), char(0)), char(34)),
	 [MEINS] = concat(char(34), replace(cast([KONDDP].[MEINS] as nvarchar(3)), char(34), char(0)), char(34)),
	 [PSDSP] = concat(char(34), replace(cast([KONDDP].[PSDSP] as nvarchar(1)), char(34), char(0)), char(34)),
	 [LSTACS] = concat(char(34), replace(cast([KONDDP].[LSTACS] as nvarchar(1)), char(34), char(0)), char(34))
from SAP_REPO.dbo.KONDDP with(nolock)