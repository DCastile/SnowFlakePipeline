select
	 [UserRoleID] = concat(char(34), isNull(cast([UserRoles].[UserRoleID] as nvarchar(max)), '\N'), char(34)),
	 [UserRole] = concat(char(34), isNull(cast([UserRoles].[UserRole] as nvarchar(max)), '\N'), char(34)),
	 [Comment] = concat(char(34), isNull(cast([UserRoles].[Comment] as nvarchar(max)), '\N'), char(34)),
	 [SMSRoleFlag] = concat(char(34), isNull(cast([UserRoles].[SMSRoleFlag] as nvarchar(max)), '\N'), char(34)),
	 [CreateDate] = isNull(convert(varchar(50), [UserRoles].[CreateDate], 21), '\N'),
	 [RoleCode] = concat(char(34), isNull(cast([UserRoles].[RoleCode] as nvarchar(max)), '\N'), char(34)),
	 [EditorGroupID] = concat(char(34), isNull(cast([UserRoles].[EditorGroupID] as nvarchar(max)), '\N'), char(34)),
	 [CustomerID] = concat(char(34), isNull(cast([UserRoles].[CustomerID] as nvarchar(max)), '\N'), char(34)),
	 [InactiveFlag] = concat(char(34), isNull(cast([UserRoles].[InactiveFlag] as nvarchar(max)), '\N'), char(34)),
	 [CustomerUsageType] = concat(char(34), isNull(cast([UserRoles].[CustomerUsageType] as nvarchar(max)), '\N'), char(34))
from SinglePoint.dbo.UserRoles