select
	 [UserRoleID] = concat('"', [UserRoles].[UserRoleID], '"'),
	 [UserRole] = concat('"', [UserRoles].[UserRole], '"'),
	 [Comment] = concat('"', [UserRoles].[Comment], '"'),
	 [SMSRoleFlag] = concat('"', [UserRoles].[SMSRoleFlag], '"'),
	 [CreateDate] = convert(varchar(50), [UserRoles].[CreateDate], 21),
	 [RoleCode] = concat('"', [UserRoles].[RoleCode], '"'),
	 [EditorGroupID] = concat('"', [UserRoles].[EditorGroupID], '"'),
	 [CustomerID] = concat('"', [UserRoles].[CustomerID], '"'),
	 [InactiveFlag] = concat('"', [UserRoles].[InactiveFlag], '"'),
	 [CustomerUsageType] = concat('"', [UserRoles].[CustomerUsageType], '"')
from SinglePoint.dbo.UserRoles