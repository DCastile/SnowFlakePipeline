select
	 [MANDT] = quotename(T151T.[MANDT], char(34)),
	 [SPRAS] = quotename(T151T.[SPRAS], char(34)),
	 [KDGRP] = quotename(T151T.[KDGRP], char(34)),
	 [KTEXT] = quotename(T151T.[KTEXT], char(34))
from SAP_Production.dbo.T151T