select
	 [MANDT] = quotename([MANDT], char(34)),
	 [SPRAS] = quotename([SPRAS], char(34)),
	 [KDGRP] = quotename([KDGRP], char(34)),
	 [KTEXT] = quotename([KTEXT], char(34))
from SAP_Production.dbo.T151T