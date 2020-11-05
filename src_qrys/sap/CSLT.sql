select
	 [MANDT] = concat(char(34), replace(cast([CSLT].[MANDT] as nvarchar(3)), char(34), char(0)), char(34)),
	 [SPRAS] = concat(char(34), replace(cast([CSLT].[SPRAS] as nvarchar(1)), char(34), char(0)), char(34)),
	 [KOKRS] = concat(char(34), replace(cast([CSLT].[KOKRS] as nvarchar(4)), char(34), char(0)), char(34)),
	 [LSTAR] = concat(char(34), replace(cast([CSLT].[LSTAR] as nvarchar(6)), char(34), char(0)), char(34)),
	 [DATBI] = concat(char(34), replace(cast([CSLT].[DATBI] as nvarchar(8)), char(34), char(0)), char(34)),
	 [KTEXT] = concat(char(34), replace(cast([CSLT].[KTEXT] as nvarchar(20)), char(34), char(0)), char(34)),
	 [LTEXT] = concat(char(34), replace(cast([CSLT].[LTEXT] as nvarchar(40)), char(34), char(0)), char(34)),
	 [MCTXT] = concat(char(34), replace(cast([CSLT].[MCTXT] as nvarchar(20)), char(34), char(0)), char(34))
from SAP_REPO.dbo.CSLT with(nolock)