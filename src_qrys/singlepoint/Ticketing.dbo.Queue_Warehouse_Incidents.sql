select
	 [ID] = concat(char(34), isNull(replace(cast([Queue_Warehouse_Incidents].[ID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [WarehouseID] = concat(char(34), isNull(replace(cast([Queue_Warehouse_Incidents].[WarehouseID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [IncidentID] = concat(char(34), isNull(replace(cast([Queue_Warehouse_Incidents].[IncidentID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [CreatedByID] = concat(char(34), isNull(replace(cast([Queue_Warehouse_Incidents].[CreatedByID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [CreatedDate] = isNull(convert(varchar(50), [Queue_Warehouse_Incidents].[CreatedDate], 21), '\N'),
	 [QueueStartTime] = isNull(convert(varchar(50), [Queue_Warehouse_Incidents].[QueueStartTime], 21), '\N'),
	 [QueueEndTime] = isNull(convert(varchar(50), [Queue_Warehouse_Incidents].[QueueEndTime], 21), '\N'),
	 [StartEventID] = concat(char(34), isNull(replace(cast([Queue_Warehouse_Incidents].[StartEventID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [EndEventID] = concat(char(34), isNull(replace(cast([Queue_Warehouse_Incidents].[EndEventID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [AssignmentTimerStart] = isNull(convert(varchar(50), [Queue_Warehouse_Incidents].[AssignmentTimerStart], 21), '\N')
from Ticketing.dbo.Queue_Warehouse_Incidents