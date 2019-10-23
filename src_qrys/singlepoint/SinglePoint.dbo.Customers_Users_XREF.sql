select
	 [CustomerID] = isNull(quotename([CustomerID], char(34)), '\N'),
	 [UserID] = isNull(quotename([UserID], char(34)), '\N'),
	 [CreateDate] = isNull(convert(varchar(50), [CreateDate], 21), '\N'),
	 [User_Customer_XREFID] = isNull(quotename([User_Customer_XREFID], char(34)), '\N'),
	 [CreateUserID] = isNull(quotename([CreateUserID], char(34)), '\N')
from SinglePoint.dbo.Customers_Users_XREF