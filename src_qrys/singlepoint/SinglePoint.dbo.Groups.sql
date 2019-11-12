select
	 [GroupID] = concat('"', [Groups].[GroupID], '"'),
	 [CustomerID] = concat('"', [Groups].[CustomerID], '"'),
	 [Name] = concat('"', [Groups].[Name], '"'),
	 [DisplayName] = concat('"', [Groups].[DisplayName], '"'),
	 [Description] = concat('"', [Groups].[Description], '"'),
	 [InactiveFlag] = concat('"', [Groups].[InactiveFlag], '"'),
	 [EditorGroupID] = concat('"', [Groups].[EditorGroupID], '"'),
	 [CreateDate] = convert(varchar(50), [Groups].[CreateDate], 21),
	 [CustomerUsageType] = concat('"', [Groups].[CustomerUsageType], '"')
from SinglePoint.dbo.Groups