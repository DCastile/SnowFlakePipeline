select
	 [PriorityID] = isNull(quotename([PriorityID], char(34)), '\N'),
	 [PriorityCodeKey] = isNull(quotename([PriorityCodeKey], char(34)), '\N'),
	 [PriorityCodeID] = isNull(quotename([PriorityCodeID], char(34)), '\N'),
	 [Description] = isNull(quotename([Description], char(34)), '\N')
from SinglePoint.dbo.IncPriority