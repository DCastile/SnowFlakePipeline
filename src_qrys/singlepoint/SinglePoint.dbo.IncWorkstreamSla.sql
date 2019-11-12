select
	 [WorkstreamSlaID] = concat(char(34), [IncWorkstreamSla].[WorkstreamSlaID], char(34)),
	 [Display] = concat(char(34), [IncWorkstreamSla].[Display], char(34)),
	 [Description] = concat(char(34), [IncWorkstreamSla].[Description], char(34))
from SinglePoint.dbo.IncWorkstreamSla