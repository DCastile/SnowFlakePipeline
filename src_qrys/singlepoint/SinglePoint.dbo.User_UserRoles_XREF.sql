select
	 [UserID] = concat('"', [User_UserRoles_XREF].[UserID], '"'),
	 [UserRoleID] = concat('"', [User_UserRoles_XREF].[UserRoleID], '"'),
	 [CreateDate] = convert(varchar(50), [User_UserRoles_XREF].[CreateDate], 21)
from SinglePoint.dbo.User_UserRoles_XREF