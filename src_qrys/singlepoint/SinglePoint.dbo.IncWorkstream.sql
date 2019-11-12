select
	 [WorkstreamID] = concat(char(34), isNull(cast([IncWorkstream].[WorkstreamID] as nvarchar(max)), '\N'), char(34)),
	 [Display] = concat(char(34), isNull(cast([IncWorkstream].[Display] as nvarchar(max)), '\N'), char(34)),
	 [Description] = concat(char(34), isNull(cast([IncWorkstream].[Description] as nvarchar(max)), '\N'), char(34))
from SinglePoint.dbo.IncWorkstream