select
	 [ID] = concat(char(34), isNull(cast([Queue_Incidents].[ID] as nvarchar(max)), '\N'), char(34)),
	 [QueueID] = concat(char(34), isNull(cast([Queue_Incidents].[QueueID] as nvarchar(max)), '\N'), char(34)),
	 [IncidentID] = concat(char(34), isNull(cast([Queue_Incidents].[IncidentID] as nvarchar(max)), '\N'), char(34)),
	 [CreatedByID] = concat(char(34), isNull(cast([Queue_Incidents].[CreatedByID] as nvarchar(max)), '\N'), char(34)),
	 [CreatedDate] = isNull(convert(varchar(50), [Queue_Incidents].[CreatedDate], 21), '\N'),
	 [CreatedByFilterID] = concat(char(34), isNull(cast([Queue_Incidents].[CreatedByFilterID] as nvarchar(max)), '\N'), char(34)),
	 [QueueStartTime] = isNull(convert(varchar(50), [Queue_Incidents].[QueueStartTime], 21), '\N'),
	 [QueueEndTime] = isNull(convert(varchar(50), [Queue_Incidents].[QueueEndTime], 21), '\N'),
	 [StartEventID] = concat(char(34), isNull(cast([Queue_Incidents].[StartEventID] as nvarchar(max)), '\N'), char(34)),
	 [EndEventID] = concat(char(34), isNull(cast([Queue_Incidents].[EndEventID] as nvarchar(max)), '\N'), char(34)),
	 [StartEventCodeID] = concat(char(34), isNull(cast([Queue_Incidents].[StartEventCodeID] as nvarchar(max)), '\N'), char(34)),
	 [EndEventCodeID] = concat(char(34), isNull(cast([Queue_Incidents].[EndEventCodeID] as nvarchar(max)), '\N'), char(34)),
	 [StartEventUserID] = concat(char(34), isNull(cast([Queue_Incidents].[StartEventUserID] as nvarchar(max)), '\N'), char(34)),
	 [EndEventUserID] = concat(char(34), isNull(cast([Queue_Incidents].[EndEventUserID] as nvarchar(max)), '\N'), char(34)),
	 [AssignmentTimerStart] = isNull(convert(varchar(50), [Queue_Incidents].[AssignmentTimerStart], 21), '\N')
from Ticketing.dbo.Queue_Incidents