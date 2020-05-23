select
	 [CURRKEY] = concat(char(34), replace(cast([TCURX].[CURRKEY] as nvarchar(5)), char(34), char(0)), char(34)),
	 [CURRDEC] = cast([TCURX].[CURRDEC] as varchar(36))
from SAP_REPO.dbo.TCURX