select
	 [MANDT] = quotename(T024.[MANDT], char(34)),
	 [EKGRP] = quotename(T024.[EKGRP], char(34)),
	 [EKNAM] = quotename(T024.[EKNAM], char(34)),
	 [EKTEL] = quotename(T024.[EKTEL], char(34)),
	 [LDEST] = quotename(T024.[LDEST], char(34)),
	 [TELFX] = quotename(T024.[TELFX], char(34)),
	 [TEL_NUMBER] = quotename(T024.[TEL_NUMBER], char(34)),
	 [TEL_EXTENS] = quotename(T024.[TEL_EXTENS], char(34)),
	 [SMTP_ADDR] = quotename(T024.[SMTP_ADDR], char(34))
from SAP_Production.dbo.T024