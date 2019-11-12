select
	 [CustomerID] = concat('"', [Customers_Users_XREF].[CustomerID], '"'),
	 [UserID] = concat('"', [Customers_Users_XREF].[UserID], '"'),
	 [CreateDate] = convert(varchar(50), [Customers_Users_XREF].[CreateDate], 21),
	 [User_Customer_XREFID] = concat('"', [Customers_Users_XREF].[User_Customer_XREFID], '"'),
	 [CreateUserID] = concat('"', [Customers_Users_XREF].[CreateUserID], '"')
from SinglePoint.dbo.Customers_Users_XREF