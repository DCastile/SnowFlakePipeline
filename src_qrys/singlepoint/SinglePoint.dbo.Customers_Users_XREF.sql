select
	 [CustomerID] = concat(char(34), [Customers_Users_XREF].[CustomerID], char(34)),
	 [UserID] = concat(char(34), [Customers_Users_XREF].[UserID], char(34)),
	 [CreateDate] = convert(varchar(50), [Customers_Users_XREF].[CreateDate], 21),
	 [User_Customer_XREFID] = concat(char(34), [Customers_Users_XREF].[User_Customer_XREFID], char(34)),
	 [CreateUserID] = concat(char(34), [Customers_Users_XREF].[CreateUserID], char(34))
from SinglePoint.dbo.Customers_Users_XREF