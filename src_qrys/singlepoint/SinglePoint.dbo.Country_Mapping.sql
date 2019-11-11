select
	 [ShiftID] = quotename([Warehouse_Shifts].[ShiftID], char(34)),
	 [WarehouseID] = quotename([Warehouse_Shifts].[WarehouseID], char(34)),
	 [ShiftName] = quotename([Warehouse_Shifts].[ShiftName], char(34)),
	 [StartTime] = quotename([Warehouse_Shifts].[StartTime], char(34)),
	 [EndTime] = quotename([Warehouse_Shifts].[EndTime], char(34)),
	 [Monday] = quotename([Warehouse_Shifts].[Monday], char(34)),
	 [Tuesday] = quotename([Warehouse_Shifts].[Tuesday], char(34)),
	 [Wednesday] = quotename([Warehouse_Shifts].[Wednesday], char(34)),
	 [Thursday] = quotename([Warehouse_Shifts].[Thursday], char(34)),
	 [Friday] = quotename([Warehouse_Shifts].[Friday], char(34)),
	 [Saturday] = quotename([Warehouse_Shifts].[Saturday], char(34)),
	 [Sunday] = quotename([Warehouse_Shifts].[Sunday], char(34)),
	 [IsActiveDuringHolidays] = quotename([Warehouse_Shifts].[IsActiveDuringHolidays], char(34))
from SinglePoint.dbo.Warehouse_Shifts