select
	 [WorkstreamID] = quotename([IncWorkstream].[WorkstreamID], char(34)),
	 [Display] = quotename([IncWorkstream].[Display], char(34)),
	 [Description] = quotename([IncWorkstream].[Description], char(34))
from SinglePoint.dbo.IncWorkstream