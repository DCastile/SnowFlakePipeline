select
	 [ID] = quotename([Queue_Incidents].[ID], char(34)),
	 [QueueID] = quotename([Queue_Incidents].[QueueID], char(34)),
	 [IncidentID] = quotename([Queue_Incidents].[IncidentID], char(34)),
	 [CreatedByID] = quotename([Queue_Incidents].[CreatedByID], char(34)),
	 [CreatedDate] = convert(varchar(50), [Queue_Incidents].[CreatedDate], 21),
	 [CreatedByFilterID] = quotename([Queue_Incidents].[CreatedByFilterID], char(34)),
	 [QueueStartTime] = convert(varchar(50), [Queue_Incidents].[QueueStartTime], 21),
	 [QueueEndTime] = convert(varchar(50), [Queue_Incidents].[QueueEndTime], 21),
	 [StartEventID] = quotename([Queue_Incidents].[StartEventID], char(34)),
	 [EndEventID] = quotename([Queue_Incidents].[EndEventID], char(34)),
	 [StartEventCodeID] = quotename([Queue_Incidents].[StartEventCodeID], char(34)),
	 [EndEventCodeID] = quotename([Queue_Incidents].[EndEventCodeID], char(34)),
	 [StartEventUserID] = quotename([Queue_Incidents].[StartEventUserID], char(34)),
	 [EndEventUserID] = quotename([Queue_Incidents].[EndEventUserID], char(34)),
	 [AssignmentTimerStart] = convert(varchar(50), [Queue_Incidents].[AssignmentTimerStart], 21)
from Ticketing.dbo.Queue_Incidents