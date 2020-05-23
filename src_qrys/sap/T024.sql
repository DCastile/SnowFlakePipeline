select
	 [MANDT] = concat(char(34), replace(cast([T024].[MANDT] as nvarchar(3)), char(34), char(0)), char(34)),
	 [EKGRP] = concat(char(34), replace(cast([T024].[EKGRP] as nvarchar(3)), char(34), char(0)), char(34)),
	 [EKNAM] = concat(char(34), replace(cast([T024].[EKNAM] as nvarchar(18)), char(34), char(0)), char(34)),
	 [EKTEL] = concat(char(34), replace(cast([T024].[EKTEL] as nvarchar(12)), char(34), char(0)), char(34)),
	 [LDEST] = concat(char(34), replace(cast([T024].[LDEST] as nvarchar(4)), char(34), char(0)), char(34)),
	 [TELFX] = concat(char(34), replace(cast([T024].[TELFX] as nvarchar(31)), char(34), char(0)), char(34)),
	 [TEL_NUMBER] = concat(char(34), replace(cast([T024].[TEL_NUMBER] as nvarchar(30)), char(34), char(0)), char(34)),
	 [TEL_EXTENS] = concat(char(34), replace(cast([T024].[TEL_EXTENS] as nvarchar(10)), char(34), char(0)), char(34)),
	 [SMTP_ADDR] = concat(char(34), replace(cast([T024].[SMTP_ADDR] as nvarchar(241)), char(34), char(0)), char(34))
from SAP_REPO.dbo.T024