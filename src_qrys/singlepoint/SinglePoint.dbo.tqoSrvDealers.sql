select
	 [GroupID] = quotename([Groups].[GroupID], char(34)),
	 [CustomerID] = quotename([Groups].[CustomerID], char(34)),
	 [Name] = quotename([Groups].[Name], char(34)),
	 [DisplayName] = quotename([Groups].[DisplayName], char(34)),
	 [Description] = quotename([Groups].[Description], char(34)),
	 [InactiveFlag] = quotename([Groups].[InactiveFlag], char(34)),
	 [EditorGroupID] = quotename([Groups].[EditorGroupID], char(34)),
	 [CreateDate] = convert(varchar(50), [Groups].[CreateDate], 21),
	 [CustomerUsageType] = quotename([Groups].[CustomerUsageType], char(34))
from SinglePoint.dbo.Groups