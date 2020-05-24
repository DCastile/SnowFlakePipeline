select
	 [UserID] = isNull(cast([User_UserRoles_XREF].[UserID] as varchar(36)), '\N'),
	 [UserRoleID] = isNull(cast([User_UserRoles_XREF].[UserRoleID] as varchar(36)), '\N'),
	 [CreateDate] = isNull(convert(varchar(50), [User_UserRoles_XREF].[CreateDate], 21), '\N')
from SinglePoint.dbo.User_UserRoles_XREF with(nolock)