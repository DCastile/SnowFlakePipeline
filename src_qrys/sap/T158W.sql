select
	 [SPRAS] = isNull(quotename([SPRAS], char(34)), '\N'),
	 [VGART] = isNull(quotename([VGART], char(34)), '\N'),
	 [LTEXT] = isNull(quotename([LTEXT], char(34)), '\N')
from SAP_Production.dbo.T158W