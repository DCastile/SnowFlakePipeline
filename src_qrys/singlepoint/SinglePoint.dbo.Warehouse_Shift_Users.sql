select
	 [ID] = concat('"', [Warehouse_Shift_Users].[ID], '"'),
	 [ShiftID] = concat('"', [Warehouse_Shift_Users].[ShiftID], '"'),
	 [WarehouseID] = concat('"', [Warehouse_Shift_Users].[WarehouseID], '"'),
	 [UserID] = concat('"', [Warehouse_Shift_Users].[UserID], '"'),
	 [RoleID] = concat('"', [Warehouse_Shift_Users].[RoleID], '"')
from SinglePoint.dbo.Warehouse_Shift_Users