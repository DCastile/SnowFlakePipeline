select
	 [UserID] = isNull(quotename([UserID], char(34)), '\N'),
	 [UserRoleID] = isNull(quotename([UserRoleID], char(34)), '\N'),
	 [CreateDate] = isNull(convert(varchar(50), [CreateDate], 21), '\N')
from SinglePoint.dbo.User_UserRoles_XREF