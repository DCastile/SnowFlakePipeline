select
	 [MANDT] = isNull(quotename([MANDT], char(34)), '\N'),
	 [EKGRP] = isNull(quotename([EKGRP], char(34)), '\N'),
	 [EKNAM] = isNull(quotename([EKNAM], char(34)), '\N'),
	 [EKTEL] = isNull(quotename([EKTEL], char(34)), '\N'),
	 [LDEST] = isNull(quotename([LDEST], char(34)), '\N'),
	 [TELFX] = isNull(quotename([TELFX], char(34)), '\N'),
	 [TEL_NUMBER] = isNull(quotename([TEL_NUMBER], char(34)), '\N'),
	 [TEL_EXTENS] = isNull(quotename([TEL_EXTENS], char(34)), '\N'),
	 [SMTP_ADDR] = isNull(quotename([SMTP_ADDR], char(34)), '\N')
from SAP_Production.dbo.T024