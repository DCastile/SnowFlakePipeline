select
	 [MATNR] = quotename([MATNR], char(34)),
	 [BWKEY] = quotename([BWKEY], char(34)),
	 [VERPR] = quotename([VERPR], char(34))
from SAP_Production.dbo.MBEW_LC