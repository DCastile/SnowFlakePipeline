select
	 [MANDT] = quotename(PURGTX_T.[MANDT], char(34)),
	 [SPRAS] = quotename(PURGTX_T.[SPRAS], char(34)),
	 [PRIO_URG] = quotename(PURGTX_T.[PRIO_URG], char(34)),
	 [PRIO_URGTX] = quotename(PURGTX_T.[PRIO_URGTX], char(34))
from SAP_Production.dbo.PURGTX_T