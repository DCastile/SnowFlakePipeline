select
	 [WorkstreamID] = concat(char(34), [IncWorkstream].[WorkstreamID], char(34)),
	 [Display] = concat(char(34), [IncWorkstream].[Display], char(34)),
	 [Description] = concat(char(34), [IncWorkstream].[Description], char(34))
from SinglePoint.dbo.IncWorkstream