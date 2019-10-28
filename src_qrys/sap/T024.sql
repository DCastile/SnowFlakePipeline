select
	 [MANDT] = quotename([MANDT], char(34)),
	 [EKGRP] = quotename([EKGRP], char(34)),
	 [EKNAM] = quotename([EKNAM], char(34)),
	 [EKTEL] = quotename([EKTEL], char(34)),
	 [LDEST] = quotename([LDEST], char(34)),
	 [TELFX] = quotename([TELFX], char(34)),
	 [TEL_NUMBER] = quotename([TEL_NUMBER], char(34)),
	 [TEL_EXTENS] = quotename([TEL_EXTENS], char(34)),
	 [SMTP_ADDR] = quotename([SMTP_ADDR], char(34))
from SAP_Production.dbo.T024