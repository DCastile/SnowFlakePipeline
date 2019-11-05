select
	 [MATNR] = quotename(MBEW_LC.[MATNR], char(34)),
	 [BWKEY] = quotename(MBEW_LC.[BWKEY], char(34)),
	 [VERPR] = quotename(MBEW_LC.[VERPR], char(34))
from SAP_Production.dbo.MBEW_LC