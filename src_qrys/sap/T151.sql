select
	 [MANDT] = quotename([MANDT], char(34)),
	 [KDGRP] = quotename([KDGRP], char(34)),
	 [BEZBG] = quotename([BEZBG], char(34))
from SAP_Production.dbo.T151