select
	 [MANDT] = quotename(T151.[MANDT], char(34)),
	 [KDGRP] = quotename(T151.[KDGRP], char(34)),
	 [BEZBG] = quotename(T151.[BEZBG], char(34))
from SAP_Production.dbo.T151