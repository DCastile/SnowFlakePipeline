select
	 [MANDT] = isNull(quotename([MANDT], char(34)), '\N'),
	 [SPRAS] = isNull(quotename([SPRAS], char(34)), '\N'),
	 [KDGRP] = isNull(quotename([KDGRP], char(34)), '\N'),
	 [KTEXT] = isNull(quotename([KTEXT], char(34)), '\N')
from SAP_Production.dbo.T151T