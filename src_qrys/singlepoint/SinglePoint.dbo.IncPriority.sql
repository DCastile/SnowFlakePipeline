select
	 [PriorityID] = concat('"', [IncPriority].[PriorityID], '"'),
	 [PriorityCodeKey] = concat('"', [IncPriority].[PriorityCodeKey], '"'),
	 [PriorityCodeID] = concat('"', [IncPriority].[PriorityCodeID], '"'),
	 [Description] = concat('"', [IncPriority].[Description], '"')
from SinglePoint.dbo.IncPriority