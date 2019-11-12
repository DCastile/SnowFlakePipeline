select
	 [WorkstreamSlaID] = concat(char(34), isNull(cast([IncWorkstreamSla].[WorkstreamSlaID] as nvarchar(max)), '\N'), char(34)),
	 [Display] = concat(char(34), isNull(cast([IncWorkstreamSla].[Display] as nvarchar(max)), '\N'), char(34)),
	 [Description] = concat(char(34), isNull(cast([IncWorkstreamSla].[Description] as nvarchar(max)), '\N'), char(34))
from SinglePoint.dbo.IncWorkstreamSla