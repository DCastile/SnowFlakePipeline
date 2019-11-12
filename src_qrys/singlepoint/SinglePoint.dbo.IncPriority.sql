select
	 [PriorityID] = concat(char(34), isNull(cast([IncPriority].[PriorityID] as nvarchar(max)), '\N'), char(34)),
	 [PriorityCodeKey] = concat(char(34), isNull(cast([IncPriority].[PriorityCodeKey] as nvarchar(max)), '\N'), char(34)),
	 [PriorityCodeID] = concat(char(34), isNull(cast([IncPriority].[PriorityCodeID] as nvarchar(max)), '\N'), char(34)),
	 [Description] = concat(char(34), isNull(cast([IncPriority].[Description] as nvarchar(max)), '\N'), char(34))
from SinglePoint.dbo.IncPriority