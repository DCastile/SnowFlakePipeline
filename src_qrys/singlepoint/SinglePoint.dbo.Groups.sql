select
	 [GroupID] = concat(char(34), [Groups].[GroupID], char(34)),
	 [CustomerID] = concat(char(34), [Groups].[CustomerID], char(34)),
	 [Name] = concat(char(34), [Groups].[Name], char(34)),
	 [DisplayName] = concat(char(34), [Groups].[DisplayName], char(34)),
	 [Description] = concat(char(34), [Groups].[Description], char(34)),
	 [InactiveFlag] = concat(char(34), [Groups].[InactiveFlag], char(34)),
	 [EditorGroupID] = concat(char(34), [Groups].[EditorGroupID], char(34)),
	 [CreateDate] = convert(varchar(50), [Groups].[CreateDate], 21),
	 [CustomerUsageType] = concat(char(34), [Groups].[CustomerUsageType], char(34))
from SinglePoint.dbo.Groups