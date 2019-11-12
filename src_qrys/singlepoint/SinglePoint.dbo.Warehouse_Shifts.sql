select
	 [ShiftID] = concat('"', [Warehouse_Shifts].[ShiftID], '"'),
	 [WarehouseID] = concat('"', [Warehouse_Shifts].[WarehouseID], '"'),
	 [ShiftName] = concat('"', [Warehouse_Shifts].[ShiftName], '"'),
	 [StartTime] = concat('"', [Warehouse_Shifts].[StartTime], '"'),
	 [EndTime] = concat('"', [Warehouse_Shifts].[EndTime], '"'),
	 [Monday] = concat('"', [Warehouse_Shifts].[Monday], '"'),
	 [Tuesday] = concat('"', [Warehouse_Shifts].[Tuesday], '"'),
	 [Wednesday] = concat('"', [Warehouse_Shifts].[Wednesday], '"'),
	 [Thursday] = concat('"', [Warehouse_Shifts].[Thursday], '"'),
	 [Friday] = concat('"', [Warehouse_Shifts].[Friday], '"'),
	 [Saturday] = concat('"', [Warehouse_Shifts].[Saturday], '"'),
	 [Sunday] = concat('"', [Warehouse_Shifts].[Sunday], '"'),
	 [IsActiveDuringHolidays] = concat('"', [Warehouse_Shifts].[IsActiveDuringHolidays], '"')
from SinglePoint.dbo.Warehouse_Shifts