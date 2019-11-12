select
	 [ID] = concat(char(34), [Queue_Incidents].[ID], char(34)),
	 [QueueID] = concat(char(34), [Queue_Incidents].[QueueID], char(34)),
	 [IncidentID] = concat(char(34), [Queue_Incidents].[IncidentID], char(34)),
	 [CreatedByID] = concat(char(34), [Queue_Incidents].[CreatedByID], char(34)),
	 [CreatedDate] = convert(varchar(50), [Queue_Incidents].[CreatedDate], 21),
	 [CreatedByFilterID] = concat(char(34), [Queue_Incidents].[CreatedByFilterID], char(34)),
	 [QueueStartTime] = convert(varchar(50), [Queue_Incidents].[QueueStartTime], 21),
	 [QueueEndTime] = convert(varchar(50), [Queue_Incidents].[QueueEndTime], 21),
	 [StartEventID] = concat(char(34), [Queue_Incidents].[StartEventID], char(34)),
	 [EndEventID] = concat(char(34), [Queue_Incidents].[EndEventID], char(34)),
	 [StartEventCodeID] = concat(char(34), [Queue_Incidents].[StartEventCodeID], char(34)),
	 [EndEventCodeID] = concat(char(34), [Queue_Incidents].[EndEventCodeID], char(34)),
	 [StartEventUserID] = concat(char(34), [Queue_Incidents].[StartEventUserID], char(34)),
	 [EndEventUserID] = concat(char(34), [Queue_Incidents].[EndEventUserID], char(34)),
	 [AssignmentTimerStart] = convert(varchar(50), [Queue_Incidents].[AssignmentTimerStart], 21)
from Ticketing.dbo.Queue_Incidents