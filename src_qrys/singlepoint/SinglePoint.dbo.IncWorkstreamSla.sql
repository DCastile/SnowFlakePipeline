select
	 [WorkstreamSlaID] = quotename([IncWorkstreamSla].[WorkstreamSlaID], char(34)),
	 [Display] = quotename([IncWorkstreamSla].[Display], char(34)),
	 [Description] = quotename([IncWorkstreamSla].[Description], char(34))
from SinglePoint.dbo.IncWorkstreamSla