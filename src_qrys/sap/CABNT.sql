select
	 [MANDT] = concat(char(34), replace(cast([CABNT].[MANDT] as nvarchar(3)), char(34), char(0)), char(34)),
	 [ATINN] = concat(char(34), replace(cast([CABNT].[ATINN] as nvarchar(10)), char(34), char(0)), char(34)),
	 [SPRAS] = concat(char(34), replace(cast([CABNT].[SPRAS] as nvarchar(1)), char(34), char(0)), char(34)),
	 [ADZHL] = concat(char(34), replace(cast([CABNT].[ADZHL] as nvarchar(4)), char(34), char(0)), char(34)),
	 [ATBEZ] = concat(char(34), replace(cast([CABNT].[ATBEZ] as nvarchar(30)), char(34), char(0)), char(34)),
	 [ATUE1] = concat(char(34), replace(cast([CABNT].[ATUE1] as nvarchar(30)), char(34), char(0)), char(34)),
	 [ATUE2] = concat(char(34), replace(cast([CABNT].[ATUE2] as nvarchar(30)), char(34), char(0)), char(34)),
	 [DATUV] = concat(char(34), replace(cast([CABNT].[DATUV] as nvarchar(8)), char(34), char(0)), char(34)),
	 [TECHV] = concat(char(34), replace(cast([CABNT].[TECHV] as nvarchar(12)), char(34), char(0)), char(34)),
	 [AENNR] = concat(char(34), replace(cast([CABNT].[AENNR] as nvarchar(12)), char(34), char(0)), char(34)),
	 [LKENZ] = concat(char(34), replace(cast([CABNT].[LKENZ] as nvarchar(1)), char(34), char(0)), char(34))
from SAP_REPO.dbo.CABNT