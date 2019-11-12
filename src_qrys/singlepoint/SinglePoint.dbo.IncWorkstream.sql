select
	 [WorkstreamID] = concat('"', [IncWorkstream].[WorkstreamID], '"'),
	 [Display] = concat('"', [IncWorkstream].[Display], '"'),
	 [Description] = concat('"', [IncWorkstream].[Description], '"')
from SinglePoint.dbo.IncWorkstream