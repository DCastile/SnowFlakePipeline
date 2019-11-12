select
	 [ID] = concat(char(34), [Warehouse_Shift_Users].[ID], char(34)),
	 [ShiftID] = concat(char(34), [Warehouse_Shift_Users].[ShiftID], char(34)),
	 [WarehouseID] = concat(char(34), [Warehouse_Shift_Users].[WarehouseID], char(34)),
	 [UserID] = concat(char(34), [Warehouse_Shift_Users].[UserID], char(34)),
	 [RoleID] = concat(char(34), [Warehouse_Shift_Users].[RoleID], char(34))
from SinglePoint.dbo.Warehouse_Shift_Users