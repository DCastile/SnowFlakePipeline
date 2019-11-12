select
	 [UserID] = concat(char(34), isNull(cast([User_UserRoles_XREF].[UserID] as nvarchar(max)), '\N'), char(34)),
	 [UserRoleID] = concat(char(34), isNull(cast([User_UserRoles_XREF].[UserRoleID] as nvarchar(max)), '\N'), char(34)),
	 [CreateDate] = isNull(convert(varchar(50), [User_UserRoles_XREF].[CreateDate], 21), '\N')
from SinglePoint.dbo.User_UserRoles_XREF