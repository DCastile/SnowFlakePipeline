select
	 [CURRKEY] = isNull(quotename([CURRKEY], char(34)), '\N'),
	 [CURRDEC] = isNull(quotename([CURRDEC], char(34)), '\N')
from SAP_Production.dbo.TCURX