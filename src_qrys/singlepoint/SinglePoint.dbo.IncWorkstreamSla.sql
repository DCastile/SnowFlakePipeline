select
	 [WorkstreamSlaID] = concat('"', [IncWorkstreamSla].[WorkstreamSlaID], '"'),
	 [Display] = concat('"', [IncWorkstreamSla].[Display], '"'),
	 [Description] = concat('"', [IncWorkstreamSla].[Description], '"')
from SinglePoint.dbo.IncWorkstreamSla