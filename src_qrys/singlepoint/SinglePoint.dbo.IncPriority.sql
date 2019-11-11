select
	 [PriorityID] = quotename([IncPriority].[PriorityID], char(34)),
	 [PriorityCodeKey] = quotename([IncPriority].[PriorityCodeKey], char(34)),
	 [PriorityCodeID] = quotename([IncPriority].[PriorityCodeID], char(34)),
	 [Description] = quotename([IncPriority].[Description], char(34))
from SinglePoint.dbo.IncPriority