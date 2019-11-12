select
	 [UserRoleID] = concat(char(34), [UserRoles].[UserRoleID], char(34)),
	 [UserRole] = concat(char(34), [UserRoles].[UserRole], char(34)),
	 [Comment] = concat(char(34), [UserRoles].[Comment], char(34)),
	 [SMSRoleFlag] = concat(char(34), [UserRoles].[SMSRoleFlag], char(34)),
	 [CreateDate] = convert(varchar(50), [UserRoles].[CreateDate], 21),
	 [RoleCode] = concat(char(34), [UserRoles].[RoleCode], char(34)),
	 [EditorGroupID] = concat(char(34), [UserRoles].[EditorGroupID], char(34)),
	 [CustomerID] = concat(char(34), [UserRoles].[CustomerID], char(34)),
	 [InactiveFlag] = concat(char(34), [UserRoles].[InactiveFlag], char(34)),
	 [CustomerUsageType] = concat(char(34), [UserRoles].[CustomerUsageType], char(34))
from SinglePoint.dbo.UserRoles