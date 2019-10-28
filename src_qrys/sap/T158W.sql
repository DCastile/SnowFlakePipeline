select
	 [SPRAS] = quotename([SPRAS], char(34)),
	 [VGART] = quotename([VGART], char(34)),
	 [LTEXT] = quotename([LTEXT], char(34))
from SAP_Production.dbo.T158W