select
	 [ShiftID] = isNull(cast([Warehouse_Shifts].[ShiftID] as varchar(36)), '\N'),
	 [WarehouseID] = isNull(cast([Warehouse_Shifts].[WarehouseID] as varchar(36)), '\N'),
	 [ShiftName] = concat(char(34), isNull(replace(cast([Warehouse_Shifts].[ShiftName] as nvarchar(255)), char(34), char(0)), '\N'), char(34)),
	 [StartTime] = isNull(convert(varchar(50), [Warehouse_Shifts].[StartTime], 21), '\N'),
	 [EndTime] = isNull(convert(varchar(50), [Warehouse_Shifts].[EndTime], 21), '\N'),
	 [Monday] = isNull(cast([Warehouse_Shifts].[Monday] as varchar(36)), '\N'),
	 [Tuesday] = isNull(cast([Warehouse_Shifts].[Tuesday] as varchar(36)), '\N'),
	 [Wednesday] = isNull(cast([Warehouse_Shifts].[Wednesday] as varchar(36)), '\N'),
	 [Thursday] = isNull(cast([Warehouse_Shifts].[Thursday] as varchar(36)), '\N'),
	 [Friday] = isNull(cast([Warehouse_Shifts].[Friday] as varchar(36)), '\N'),
	 [Saturday] = isNull(cast([Warehouse_Shifts].[Saturday] as varchar(36)), '\N'),
	 [Sunday] = isNull(cast([Warehouse_Shifts].[Sunday] as varchar(36)), '\N'),
	 [IsActiveDuringHolidays] = isNull(cast([Warehouse_Shifts].[IsActiveDuringHolidays] as varchar(36)), '\N')
from SinglePoint.dbo.Warehouse_Shifts