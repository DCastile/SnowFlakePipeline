select
	 [CustomerID] = concat(char(34), isNull(cast([Customers_Users_XREF].[CustomerID] as nvarchar(max)), '\N'), char(34)),
	 [UserID] = concat(char(34), isNull(cast([Customers_Users_XREF].[UserID] as nvarchar(max)), '\N'), char(34)),
	 [CreateDate] = isNull(convert(varchar(50), [Customers_Users_XREF].[CreateDate], 21), '\N'),
	 [User_Customer_XREFID] = concat(char(34), isNull(cast([Customers_Users_XREF].[User_Customer_XREFID] as nvarchar(max)), '\N'), char(34)),
	 [CreateUserID] = concat(char(34), isNull(cast([Customers_Users_XREF].[CreateUserID] as nvarchar(max)), '\N'), char(34))
from SinglePoint.dbo.Customers_Users_XREF