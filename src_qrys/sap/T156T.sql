select
	 [MANDT] = quotename([MANDT], char(34)),
	 [SPRAS] = quotename([SPRAS], char(34)),
	 [BWART] = quotename([BWART], char(34)),
	 [SOBKZ] = quotename([SOBKZ], char(34)),
	 [KZBEW] = quotename([KZBEW], char(34)),
	 [KZZUG] = quotename([KZZUG], char(34)),
	 [KZVBR] = quotename([KZVBR], char(34)),
	 [BTEXT] = quotename([BTEXT], char(34))
from SAP_Production.dbo.T156T