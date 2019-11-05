select
	 [MANDT] = quotename(T156T.[MANDT], char(34)),
	 [SPRAS] = quotename(T156T.[SPRAS], char(34)),
	 [BWART] = quotename(T156T.[BWART], char(34)),
	 [SOBKZ] = quotename(T156T.[SOBKZ], char(34)),
	 [KZBEW] = quotename(T156T.[KZBEW], char(34)),
	 [KZZUG] = quotename(T156T.[KZZUG], char(34)),
	 [KZVBR] = quotename(T156T.[KZVBR], char(34)),
	 [BTEXT] = quotename(T156T.[BTEXT], char(34))
from SAP_Production.dbo.T156T