select
	 [CustomerID] = isNull(cast([Customers_Users_XREF].[CustomerID] as varchar(36)), '\N'),
	 [UserID] = isNull(cast([Customers_Users_XREF].[UserID] as varchar(36)), '\N'),
	 [CreateDate] = isNull(convert(varchar(50), [Customers_Users_XREF].[CreateDate], 21), '\N'),
	 [User_Customer_XREFID] = isNull(cast([Customers_Users_XREF].[User_Customer_XREFID] as varchar(36)), '\N'),
	 [CreateUserID] = isNull(cast([Customers_Users_XREF].[CreateUserID] as varchar(36)), '\N')
from SinglePoint.dbo.Customers_Users_XREF