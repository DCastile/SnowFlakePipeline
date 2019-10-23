select
	 [MANDT] = isNull(quotename([MANDT], char(34)), '\N'),
	 [SPRAS] = isNull(quotename([SPRAS], char(34)), '\N'),
	 [BWART] = isNull(quotename([BWART], char(34)), '\N'),
	 [SOBKZ] = isNull(quotename([SOBKZ], char(34)), '\N'),
	 [KZBEW] = isNull(quotename([KZBEW], char(34)), '\N'),
	 [KZZUG] = isNull(quotename([KZZUG], char(34)), '\N'),
	 [KZVBR] = isNull(quotename([KZVBR], char(34)), '\N'),
	 [BTEXT] = isNull(quotename([BTEXT], char(34)), '\N')
from SAP_Production.dbo.T156T