select
	 [ID] = isNull(cast([Warehouse_Shift_Users].[ID] as varchar(36)), '\N'),
	 [ShiftID] = isNull(cast([Warehouse_Shift_Users].[ShiftID] as varchar(36)), '\N'),
	 [WarehouseID] = isNull(cast([Warehouse_Shift_Users].[WarehouseID] as varchar(36)), '\N'),
	 [UserID] = isNull(cast([Warehouse_Shift_Users].[UserID] as varchar(36)), '\N'),
	 [RoleID] = isNull(cast([Warehouse_Shift_Users].[RoleID] as varchar(36)), '\N')
from SinglePoint.dbo.Warehouse_Shift_Users