select
	 [MANDT] = concat(char(34), replace(cast([KOTD001].[MANDT] as nvarchar(3)), char(34), char(0)), char(34)),
	 [KAPPL] = concat(char(34), replace(cast([KOTD001].[KAPPL] as nvarchar(2)), char(34), char(0)), char(34)),
	 [KSCHL] = concat(char(34), replace(cast([KOTD001].[KSCHL] as nvarchar(4)), char(34), char(0)), char(34)),
	 [MATWA] = concat(char(34), replace(cast([KOTD001].[MATWA] as nvarchar(18)), char(34), char(0)), char(34)),
	 [DATBI] = concat(char(34), replace(cast([KOTD001].[DATBI] as nvarchar(8)), char(34), char(0)), char(34)),
	 [DATAB] = concat(char(34), replace(cast([KOTD001].[DATAB] as nvarchar(8)), char(34), char(0)), char(34)),
	 [KNUMH] = concat(char(34), replace(cast([KOTD001].[KNUMH] as nvarchar(10)), char(34), char(0)), char(34))
from SAP_REPO.dbo.KOTD001 with(nolock)