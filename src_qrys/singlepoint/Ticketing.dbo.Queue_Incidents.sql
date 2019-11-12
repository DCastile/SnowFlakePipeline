select
	 [ID] = concat('"', [Queue_Incidents].[ID], '"'),
	 [QueueID] = concat('"', [Queue_Incidents].[QueueID], '"'),
	 [IncidentID] = concat('"', [Queue_Incidents].[IncidentID], '"'),
	 [CreatedByID] = concat('"', [Queue_Incidents].[CreatedByID], '"'),
	 [CreatedDate] = convert(varchar(50), [Queue_Incidents].[CreatedDate], 21),
	 [CreatedByFilterID] = concat('"', [Queue_Incidents].[CreatedByFilterID], '"'),
	 [QueueStartTime] = convert(varchar(50), [Queue_Incidents].[QueueStartTime], 21),
	 [QueueEndTime] = convert(varchar(50), [Queue_Incidents].[QueueEndTime], 21),
	 [StartEventID] = concat('"', [Queue_Incidents].[StartEventID], '"'),
	 [EndEventID] = concat('"', [Queue_Incidents].[EndEventID], '"'),
	 [StartEventCodeID] = concat('"', [Queue_Incidents].[StartEventCodeID], '"'),
	 [EndEventCodeID] = concat('"', [Queue_Incidents].[EndEventCodeID], '"'),
	 [StartEventUserID] = concat('"', [Queue_Incidents].[StartEventUserID], '"'),
	 [EndEventUserID] = concat('"', [Queue_Incidents].[EndEventUserID], '"'),
	 [AssignmentTimerStart] = convert(varchar(50), [Queue_Incidents].[AssignmentTimerStart], 21)
from Ticketing.dbo.Queue_Incidents