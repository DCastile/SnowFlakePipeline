select
	 [CURRKEY] = quotename([TCURX].[CURRKEY], char(34)),
	 [CURRDEC] = quotename([TCURX].[CURRDEC], char(34))
from SAP_Production.dbo.TCURX