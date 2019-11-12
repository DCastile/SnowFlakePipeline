select
	 [UserRoleID] = concat(char(34), isNull(replace(cast([UserRoles].[UserRoleID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [UserRole] = concat(char(34), isNull(replace(cast([UserRoles].[UserRole] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Comment] = concat(char(34), isNull(replace(cast([UserRoles].[Comment] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SMSRoleFlag] = concat(char(34), isNull(replace(cast([UserRoles].[SMSRoleFlag] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [CreateDate] = isNull(convert(varchar(50), [UserRoles].[CreateDate], 21), '\N'),
	 [RoleCode] = concat(char(34), isNull(replace(cast([UserRoles].[RoleCode] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [EditorGroupID] = concat(char(34), isNull(replace(cast([UserRoles].[EditorGroupID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [CustomerID] = concat(char(34), isNull(replace(cast([UserRoles].[CustomerID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [InactiveFlag] = concat(char(34), isNull(replace(cast([UserRoles].[InactiveFlag] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [CustomerUsageType] = concat(char(34), isNull(replace(cast([UserRoles].[CustomerUsageType] as nvarchar(max)), char(34), char(0)), '\N'), char(34))
from SinglePoint.dbo.UserRoles