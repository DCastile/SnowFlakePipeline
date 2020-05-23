select
	 [MANDT] = concat(char(34), replace(cast([T151].[MANDT] as nvarchar(3)), char(34), char(0)), char(34)),
	 [KDGRP] = concat(char(34), replace(cast([T151].[KDGRP] as nvarchar(2)), char(34), char(0)), char(34)),
	 [BEZBG] = concat(char(34), replace(cast([T151].[BEZBG] as nvarchar(1)), char(34), char(0)), char(34))
from SAP_REPO.dbo.T151 with(nolock)