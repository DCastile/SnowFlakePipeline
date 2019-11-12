select
	 [ID] = concat('"', [Queue_Warehouse_Incidents].[ID], '"'),
	 [WarehouseID] = concat('"', [Queue_Warehouse_Incidents].[WarehouseID], '"'),
	 [IncidentID] = concat('"', [Queue_Warehouse_Incidents].[IncidentID], '"'),
	 [CreatedByID] = concat('"', [Queue_Warehouse_Incidents].[CreatedByID], '"'),
	 [CreatedDate] = convert(varchar(50), [Queue_Warehouse_Incidents].[CreatedDate], 21),
	 [QueueStartTime] = convert(varchar(50), [Queue_Warehouse_Incidents].[QueueStartTime], 21),
	 [QueueEndTime] = convert(varchar(50), [Queue_Warehouse_Incidents].[QueueEndTime], 21),
	 [StartEventID] = concat('"', [Queue_Warehouse_Incidents].[StartEventID], '"'),
	 [EndEventID] = concat('"', [Queue_Warehouse_Incidents].[EndEventID], '"'),
	 [AssignmentTimerStart] = convert(varchar(50), [Queue_Warehouse_Incidents].[AssignmentTimerStart], 21)
from Ticketing.dbo.Queue_Warehouse_Incidents