select
	 [MANDT] = concat(char(34), replace(cast([PURGTX_T].[MANDT] as nvarchar(3)), char(34), char(0)), char(34)),
	 [SPRAS] = concat(char(34), replace(cast([PURGTX_T].[SPRAS] as nvarchar(1)), char(34), char(0)), char(34)),
	 [PRIO_URG] = concat(char(34), replace(cast([PURGTX_T].[PRIO_URG] as nvarchar(2)), char(34), char(0)), char(34)),
	 [PRIO_URGTX] = concat(char(34), replace(cast([PURGTX_T].[PRIO_URGTX] as nvarchar(35)), char(34), char(0)), char(34))
from SAP_REPO.dbo.PURGTX_T with(nolock)