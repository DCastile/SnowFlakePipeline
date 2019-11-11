select
	 [UserID] = quotename([User_UserRoles_XREF].[UserID], char(34)),
	 [UserRoleID] = quotename([User_UserRoles_XREF].[UserRoleID], char(34)),
	 [CreateDate] = convert(varchar(50), [User_UserRoles_XREF].[CreateDate], 21)
from SinglePoint.dbo.User_UserRoles_XREF