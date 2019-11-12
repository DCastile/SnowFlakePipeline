select
	 [ShiftID] = concat(char(34), [Warehouse_Shifts].[ShiftID], char(34)),
	 [WarehouseID] = concat(char(34), [Warehouse_Shifts].[WarehouseID], char(34)),
	 [ShiftName] = concat(char(34), [Warehouse_Shifts].[ShiftName], char(34)),
	 [StartTime] = concat(char(34), [Warehouse_Shifts].[StartTime], char(34)),
	 [EndTime] = concat(char(34), [Warehouse_Shifts].[EndTime], char(34)),
	 [Monday] = concat(char(34), [Warehouse_Shifts].[Monday], char(34)),
	 [Tuesday] = concat(char(34), [Warehouse_Shifts].[Tuesday], char(34)),
	 [Wednesday] = concat(char(34), [Warehouse_Shifts].[Wednesday], char(34)),
	 [Thursday] = concat(char(34), [Warehouse_Shifts].[Thursday], char(34)),
	 [Friday] = concat(char(34), [Warehouse_Shifts].[Friday], char(34)),
	 [Saturday] = concat(char(34), [Warehouse_Shifts].[Saturday], char(34)),
	 [Sunday] = concat(char(34), [Warehouse_Shifts].[Sunday], char(34)),
	 [IsActiveDuringHolidays] = concat(char(34), [Warehouse_Shifts].[IsActiveDuringHolidays], char(34))
from SinglePoint.dbo.Warehouse_Shifts