select
	 [UserRoleID] = isNull(cast([UserRoles].[UserRoleID] as varchar(36)), '\N'),
	 [UserRole] = concat(char(34), isNull(replace(cast([UserRoles].[UserRole] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [Comment] = concat(char(34), isNull(replace(cast([UserRoles].[Comment] as nvarchar(100)), char(34), char(0)), '\N'), char(34)),
	 [SMSRoleFlag] = isNull(cast([UserRoles].[SMSRoleFlag] as varchar(36)), '\N'),
	 [CreateDate] = isNull(convert(varchar(50), [UserRoles].[CreateDate], 21), '\N'),
	 [RoleCode] = concat(char(34), isNull(replace(cast([UserRoles].[RoleCode] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [EditorGroupID] = isNull(cast([UserRoles].[EditorGroupID] as varchar(36)), '\N'),
	 [CustomerID] = isNull(cast([UserRoles].[CustomerID] as varchar(36)), '\N'),
	 [InactiveFlag] = isNull(cast([UserRoles].[InactiveFlag] as varchar(36)), '\N'),
	 [CustomerUsageType] = isNull(cast([UserRoles].[CustomerUsageType] as varchar(36)), '\N')
from SinglePoint.dbo.UserRoles