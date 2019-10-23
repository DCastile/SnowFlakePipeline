select
	 [MANDT] = isNull(quotename([MANDT], char(34)), '\N'),
	 [SPRAS] = isNull(quotename([SPRAS], char(34)), '\N'),
	 [PRIO_URG] = isNull(quotename([PRIO_URG], char(34)), '\N'),
	 [PRIO_URGTX] = isNull(quotename([PRIO_URGTX], char(34)), '\N')
from SAP_Production.dbo.PURGTX_T