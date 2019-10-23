select
	 [UserRoleID] = isNull(quotename([UserRoleID], char(34)), '\N'),
	 [UserRole] = isNull(quotename([UserRole], char(34)), '\N'),
	 [Comment] = isNull(quotename([Comment], char(34)), '\N'),
	 [SMSRoleFlag] = isNull(quotename([SMSRoleFlag], char(34)), '\N'),
	 [CreateDate] = isNull(convert(varchar(50), [CreateDate], 21), '\N'),
	 [RoleCode] = isNull(quotename([RoleCode], char(34)), '\N'),
	 [EditorGroupID] = isNull(quotename([EditorGroupID], char(34)), '\N'),
	 [CustomerID] = isNull(quotename([CustomerID], char(34)), '\N'),
	 [InactiveFlag] = isNull(quotename([InactiveFlag], char(34)), '\N'),
	 [CustomerUsageType] = isNull(quotename([CustomerUsageType], char(34)), '\N')
from SinglePoint.dbo.UserRoles