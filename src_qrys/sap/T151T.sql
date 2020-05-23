select
	 [MANDT] = concat(char(34), replace(cast([T151T].[MANDT] as nvarchar(3)), char(34), char(0)), char(34)),
	 [SPRAS] = concat(char(34), replace(cast([T151T].[SPRAS] as nvarchar(1)), char(34), char(0)), char(34)),
	 [KDGRP] = concat(char(34), replace(cast([T151T].[KDGRP] as nvarchar(2)), char(34), char(0)), char(34)),
	 [KTEXT] = concat(char(34), replace(cast([T151T].[KTEXT] as nvarchar(20)), char(34), char(0)), char(34))
from SAP_REPO.dbo.T151T