select
	 [ID] = isNull(cast([Queue_Warehouse_Incidents].[ID] as varchar(36)), '\N'),
	 [WarehouseID] = isNull(cast([Queue_Warehouse_Incidents].[WarehouseID] as varchar(36)), '\N'),
	 [IncidentID] = isNull(cast([Queue_Warehouse_Incidents].[IncidentID] as varchar(36)), '\N'),
	 [CreatedByID] = isNull(cast([Queue_Warehouse_Incidents].[CreatedByID] as varchar(36)), '\N'),
	 [CreatedDate] = isNull(convert(varchar(50), [Queue_Warehouse_Incidents].[CreatedDate], 21), '\N'),
	 [QueueStartTime] = isNull(convert(varchar(50), [Queue_Warehouse_Incidents].[QueueStartTime], 21), '\N'),
	 [QueueEndTime] = isNull(convert(varchar(50), [Queue_Warehouse_Incidents].[QueueEndTime], 21), '\N'),
	 [StartEventID] = isNull(cast([Queue_Warehouse_Incidents].[StartEventID] as varchar(36)), '\N'),
	 [EndEventID] = isNull(cast([Queue_Warehouse_Incidents].[EndEventID] as varchar(36)), '\N'),
	 [AssignmentTimerStart] = isNull(convert(varchar(50), [Queue_Warehouse_Incidents].[AssignmentTimerStart], 21), '\N')
from Ticketing.dbo.Queue_Warehouse_Incidents with(nolock)