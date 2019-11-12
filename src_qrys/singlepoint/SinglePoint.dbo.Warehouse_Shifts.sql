select
	 [ShiftID] = concat(char(34), isNull(cast([Warehouse_Shifts].[ShiftID] as nvarchar(max)), '\N'), char(34)),
	 [WarehouseID] = concat(char(34), isNull(cast([Warehouse_Shifts].[WarehouseID] as nvarchar(max)), '\N'), char(34)),
	 [ShiftName] = concat(char(34), isNull(cast([Warehouse_Shifts].[ShiftName] as nvarchar(max)), '\N'), char(34)),
	 [StartTime] = concat(char(34), isNull(cast([Warehouse_Shifts].[StartTime] as nvarchar(max)), '\N'), char(34)),
	 [EndTime] = concat(char(34), isNull(cast([Warehouse_Shifts].[EndTime] as nvarchar(max)), '\N'), char(34)),
	 [Monday] = concat(char(34), isNull(cast([Warehouse_Shifts].[Monday] as nvarchar(max)), '\N'), char(34)),
	 [Tuesday] = concat(char(34), isNull(cast([Warehouse_Shifts].[Tuesday] as nvarchar(max)), '\N'), char(34)),
	 [Wednesday] = concat(char(34), isNull(cast([Warehouse_Shifts].[Wednesday] as nvarchar(max)), '\N'), char(34)),
	 [Thursday] = concat(char(34), isNull(cast([Warehouse_Shifts].[Thursday] as nvarchar(max)), '\N'), char(34)),
	 [Friday] = concat(char(34), isNull(cast([Warehouse_Shifts].[Friday] as nvarchar(max)), '\N'), char(34)),
	 [Saturday] = concat(char(34), isNull(cast([Warehouse_Shifts].[Saturday] as nvarchar(max)), '\N'), char(34)),
	 [Sunday] = concat(char(34), isNull(cast([Warehouse_Shifts].[Sunday] as nvarchar(max)), '\N'), char(34)),
	 [IsActiveDuringHolidays] = concat(char(34), isNull(cast([Warehouse_Shifts].[IsActiveDuringHolidays] as nvarchar(max)), '\N'), char(34))
from SinglePoint.dbo.Warehouse_Shifts