select
	 [UserRoleID] = quotename([UserRoles].[UserRoleID], char(34)),
	 [UserRole] = quotename([UserRoles].[UserRole], char(34)),
	 [Comment] = quotename([UserRoles].[Comment], char(34)),
	 [SMSRoleFlag] = quotename([UserRoles].[SMSRoleFlag], char(34)),
	 [CreateDate] = convert(varchar(50), [UserRoles].[CreateDate], 21),
	 [RoleCode] = quotename([UserRoles].[RoleCode], char(34)),
	 [EditorGroupID] = quotename([UserRoles].[EditorGroupID], char(34)),
	 [CustomerID] = quotename([UserRoles].[CustomerID], char(34)),
	 [InactiveFlag] = quotename([UserRoles].[InactiveFlag], char(34)),
	 [CustomerUsageType] = quotename([UserRoles].[CustomerUsageType], char(34))
from SinglePoint.dbo.UserRoles