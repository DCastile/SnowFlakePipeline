select
	 [MATNR] = isNull(quotename([MATNR], char(34)), '\N'),
	 [BWKEY] = isNull(quotename([BWKEY], char(34)), '\N'),
	 [VERPR] = isNull(quotename([VERPR], char(34)), '\N')
from SAP_Production.dbo.MBEW_LC