select
	 [ID] = quotename([Queue_Warehouse_Incidents].[ID], char(34)),
	 [WarehouseID] = quotename([Queue_Warehouse_Incidents].[WarehouseID], char(34)),
	 [IncidentID] = quotename([Queue_Warehouse_Incidents].[IncidentID], char(34)),
	 [CreatedByID] = quotename([Queue_Warehouse_Incidents].[CreatedByID], char(34)),
	 [CreatedDate] = convert(varchar(50), [Queue_Warehouse_Incidents].[CreatedDate], 21),
	 [QueueStartTime] = convert(varchar(50), [Queue_Warehouse_Incidents].[QueueStartTime], 21),
	 [QueueEndTime] = convert(varchar(50), [Queue_Warehouse_Incidents].[QueueEndTime], 21),
	 [StartEventID] = quotename([Queue_Warehouse_Incidents].[StartEventID], char(34)),
	 [EndEventID] = quotename([Queue_Warehouse_Incidents].[EndEventID], char(34)),
	 [AssignmentTimerStart] = convert(varchar(50), [Queue_Warehouse_Incidents].[AssignmentTimerStart], 21)
from Ticketing.dbo.Queue_Warehouse_Incidents