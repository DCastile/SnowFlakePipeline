select
	 [MANDT] = quotename([MANDT], char(34)),
	 [SPRAS] = quotename([SPRAS], char(34)),
	 [PRIO_URG] = quotename([PRIO_URG], char(34)),
	 [PRIO_URGTX] = quotename([PRIO_URGTX], char(34))
from SAP_Production.dbo.PURGTX_T