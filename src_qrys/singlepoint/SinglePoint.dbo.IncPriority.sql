select
	 [PriorityID] = isNull(cast([IncPriority].[PriorityID] as varchar(36)), '\N'),
	 [PriorityCodeKey] = isNull(cast([IncPriority].[PriorityCodeKey] as varchar(36)), '\N'),
	 [PriorityCodeID] = concat(char(34), isNull(replace(cast([IncPriority].[PriorityCodeID] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [Description] = concat(char(34), isNull(replace(cast([IncPriority].[Description] as nvarchar(40)), char(34), char(0)), '\N'), char(34))
from SinglePoint.dbo.IncPriority with(nolock)