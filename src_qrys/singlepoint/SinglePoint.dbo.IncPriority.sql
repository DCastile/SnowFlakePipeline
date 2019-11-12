select
	 [PriorityID] = concat(char(34), [IncPriority].[PriorityID], char(34)),
	 [PriorityCodeKey] = concat(char(34), [IncPriority].[PriorityCodeKey], char(34)),
	 [PriorityCodeID] = concat(char(34), [IncPriority].[PriorityCodeID], char(34)),
	 [Description] = concat(char(34), [IncPriority].[Description], char(34))
from SinglePoint.dbo.IncPriority