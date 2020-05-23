select
	 [MANDT] = concat(char(34), replace(cast([SKAT].[MANDT] as nvarchar(3)), char(34), char(0)), char(34)),
	 [SPRAS] = concat(char(34), replace(cast([SKAT].[SPRAS] as nvarchar(1)), char(34), char(0)), char(34)),
	 [KTOPL] = concat(char(34), replace(cast([SKAT].[KTOPL] as nvarchar(4)), char(34), char(0)), char(34)),
	 [SAKNR] = concat(char(34), replace(cast([SKAT].[SAKNR] as nvarchar(10)), char(34), char(0)), char(34)),
	 [TXT20] = concat(char(34), replace(cast([SKAT].[TXT20] as nvarchar(20)), char(34), char(0)), char(34)),
	 [TXT50] = concat(char(34), replace(cast([SKAT].[TXT50] as nvarchar(50)), char(34), char(0)), char(34)),
	 [MCOD1] = concat(char(34), replace(cast([SKAT].[MCOD1] as nvarchar(25)), char(34), char(0)), char(34))
from SAP_REPO.dbo.SKAT