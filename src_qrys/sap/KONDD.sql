select
	 [MANDT] = concat(char(34), replace(cast([KONDD].[MANDT] as nvarchar(3)), char(34), char(0)), char(34)),
	 [KNUMH] = concat(char(34), replace(cast([KONDD].[KNUMH] as nvarchar(10)), char(34), char(0)), char(34)),
	 [SMATN] = concat(char(34), replace(cast([KONDD].[SMATN] as nvarchar(18)), char(34), char(0)), char(34)),
	 [MEINS] = concat(char(34), replace(cast([KONDD].[MEINS] as nvarchar(3)), char(34), char(0)), char(34)),
	 [SUGRD] = concat(char(34), replace(cast([KONDD].[SUGRD] as nvarchar(4)), char(34), char(0)), char(34)),
	 [PSDSP] = concat(char(34), replace(cast([KONDD].[PSDSP] as nvarchar(1)), char(34), char(0)), char(34)),
	 [LSTACS] = concat(char(34), replace(cast([KONDD].[LSTACS] as nvarchar(1)), char(34), char(0)), char(34))
from SAP_REPO.dbo.KONDD