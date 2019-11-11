select
	 [CustomerID] = quotename([Customers_Users_XREF].[CustomerID], char(34)),
	 [UserID] = quotename([Customers_Users_XREF].[UserID], char(34)),
	 [CreateDate] = convert(varchar(50), [Customers_Users_XREF].[CreateDate], 21),
	 [User_Customer_XREFID] = quotename([Customers_Users_XREF].[User_Customer_XREFID], char(34)),
	 [CreateUserID] = quotename([Customers_Users_XREF].[CreateUserID], char(34))
from SinglePoint.dbo.Customers_Users_XREF