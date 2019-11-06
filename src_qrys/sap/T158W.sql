select
	 [SPRAS] = quotename([T158W].[SPRAS], char(34)),
	 [VGART] = quotename([T158W].[VGART], char(34)),
	 [LTEXT] = quotename([T158W].[LTEXT], char(34))
from SAP_Production.dbo.T158W