select
	 [WorkstreamSlaID] = concat(char(34), isNull(replace(cast([IncWorkstreamSla].[WorkstreamSlaID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Display] = concat(char(34), isNull(replace(cast([IncWorkstreamSla].[Display] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Description] = concat(char(34), isNull(replace(cast([IncWorkstreamSla].[Description] as nvarchar(max)), char(34), char(0)), '\N'), char(34))
from SinglePoint.dbo.IncWorkstreamSla with(nolock)