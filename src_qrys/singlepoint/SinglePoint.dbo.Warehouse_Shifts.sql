select
	 [ID] = quotename([Warehouse_Shift_Users].[ID], char(34)),
	 [ShiftID] = quotename([Warehouse_Shift_Users].[ShiftID], char(34)),
	 [WarehouseID] = quotename([Warehouse_Shift_Users].[WarehouseID], char(34)),
	 [UserID] = quotename([Warehouse_Shift_Users].[UserID], char(34)),
	 [RoleID] = quotename([Warehouse_Shift_Users].[RoleID], char(34))
from SinglePoint.dbo.Warehouse_Shift_Users