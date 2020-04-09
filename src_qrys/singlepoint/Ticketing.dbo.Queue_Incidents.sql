select
	 [ID] = isNull(cast([Queue_Incidents].[ID] as varchar(36)), '\N'),
	 [QueueID] = isNull(cast([Queue_Incidents].[QueueID] as varchar(36)), '\N'),
	 [IncidentID] = isNull(cast([Queue_Incidents].[IncidentID] as varchar(36)), '\N'),
	 [CreatedByID] = isNull(cast([Queue_Incidents].[CreatedByID] as varchar(36)), '\N'),
	 [CreatedDate] = isNull(convert(varchar(50), [Queue_Incidents].[CreatedDate], 21), '\N'),
	 [CreatedByFilterID] = isNull(cast([Queue_Incidents].[CreatedByFilterID] as varchar(36)), '\N'),
	 [QueueStartTime] = isNull(convert(varchar(50), [Queue_Incidents].[QueueStartTime], 21), '\N'),
	 [QueueEndTime] = isNull(convert(varchar(50), [Queue_Incidents].[QueueEndTime], 21), '\N'),
	 [StartEventID] = isNull(cast([Queue_Incidents].[StartEventID] as varchar(36)), '\N'),
	 [EndEventID] = isNull(cast([Queue_Incidents].[EndEventID] as varchar(36)), '\N'),
	 [StartEventCodeID] = isNull(cast([Queue_Incidents].[StartEventCodeID] as varchar(36)), '\N'),
	 [EndEventCodeID] = isNull(cast([Queue_Incidents].[EndEventCodeID] as varchar(36)), '\N'),
	 [StartEventUserID] = isNull(cast([Queue_Incidents].[StartEventUserID] as varchar(36)), '\N'),
	 [EndEventUserID] = isNull(cast([Queue_Incidents].[EndEventUserID] as varchar(36)), '\N'),
	 [AssignmentTimerStart] = isNull(convert(varchar(50), [Queue_Incidents].[AssignmentTimerStart], 21), '\N')
from Ticketing.dbo.Queue_Incidents