select
	 [CURRKEY] = quotename([CURRKEY], char(34)),
	 [CURRDEC] = quotename([CURRDEC], char(34))
from SAP_Production.dbo.TCURX