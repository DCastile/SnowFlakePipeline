select
	 [MANDT] = isNull(quotename([MANDT], char(34)), '\N'),
	 [KDGRP] = isNull(quotename([KDGRP], char(34)), '\N'),
	 [BEZBG] = isNull(quotename([BEZBG], char(34)), '\N')
from SAP_Production.dbo.T151