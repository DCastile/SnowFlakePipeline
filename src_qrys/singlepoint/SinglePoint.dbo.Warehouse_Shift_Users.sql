select
	 [ID] = concat(char(34), isNull(cast([Warehouse_Shift_Users].[ID] as nvarchar(max)), '\N'), char(34)),
	 [ShiftID] = concat(char(34), isNull(cast([Warehouse_Shift_Users].[ShiftID] as nvarchar(max)), '\N'), char(34)),
	 [WarehouseID] = concat(char(34), isNull(cast([Warehouse_Shift_Users].[WarehouseID] as nvarchar(max)), '\N'), char(34)),
	 [UserID] = concat(char(34), isNull(cast([Warehouse_Shift_Users].[UserID] as nvarchar(max)), '\N'), char(34)),
	 [RoleID] = concat(char(34), isNull(cast([Warehouse_Shift_Users].[RoleID] as nvarchar(max)), '\N'), char(34))
from SinglePoint.dbo.Warehouse_Shift_Users