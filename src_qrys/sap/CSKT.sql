select
	 [MANDT] = concat(char(34), replace(cast([CSKT].[MANDT] as nvarchar(3)), char(34), char(0)), char(34)),
	 [SPRAS] = concat(char(34), replace(cast([CSKT].[SPRAS] as nvarchar(1)), char(34), char(0)), char(34)),
	 [KOKRS] = concat(char(34), replace(cast([CSKT].[KOKRS] as nvarchar(4)), char(34), char(0)), char(34)),
	 [KOSTL] = concat(char(34), replace(cast([CSKT].[KOSTL] as nvarchar(10)), char(34), char(0)), char(34)),
	 [DATBI] = concat(char(34), replace(cast([CSKT].[DATBI] as nvarchar(8)), char(34), char(0)), char(34)),
	 [KTEXT] = concat(char(34), replace(cast([CSKT].[KTEXT] as nvarchar(20)), char(34), char(0)), char(34)),
	 [LTEXT] = concat(char(34), replace(cast([CSKT].[LTEXT] as nvarchar(40)), char(34), char(0)), char(34)),
	 [MCTXT] = concat(char(34), replace(cast([CSKT].[MCTXT] as nvarchar(20)), char(34), char(0)), char(34))
from SAP_REPO.dbo.CSKT with(nolock)