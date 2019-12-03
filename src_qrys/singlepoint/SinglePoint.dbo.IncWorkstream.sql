select
	 [WorkstreamID] = concat(char(34), isNull(replace(cast([IncWorkstream].[WorkstreamID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Display] = concat(char(34), isNull(replace(cast([IncWorkstream].[Display] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Description] = concat(char(34), isNull(replace(cast([IncWorkstream].[Description] as nvarchar(max)), char(34), char(0)), '\N'), char(34))
from SinglePoint.dbo.IncWorkstream with(nolock)