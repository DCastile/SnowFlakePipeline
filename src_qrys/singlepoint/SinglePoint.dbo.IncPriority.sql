select
	 [PriorityCodeKey] = concat(char(34), isNull(replace(cast([IncPriority].[PriorityCodeKey] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [PriorityID] = concat(char(34), isNull(replace(cast([IncPriority].[PriorityID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [PriorityCodeID] = concat(char(34), isNull(replace(cast([IncPriority].[PriorityCodeID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Description] = concat(char(34), isNull(replace(cast([IncPriority].[Description] as nvarchar(max)), char(34), char(0)), '\N'), char(34))
from SinglePoint.dbo.IncPriority