select
	 [WorkstreamID] = isNull(cast([IncWorkstream].[WorkstreamID] as varchar(36)), '\N'),
	 [Display] = concat(char(34), isNull(replace(cast([IncWorkstream].[Display] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [Description] = concat(char(34), isNull(replace(cast([IncWorkstream].[Description] as nvarchar(255)), char(34), char(0)), '\N'), char(34))
from SinglePoint.dbo.IncWorkstream with(nolock)