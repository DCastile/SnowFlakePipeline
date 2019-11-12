select
	 [GroupID] = concat(char(34), isNull(cast([Groups].[GroupID] as nvarchar(max)), '\N'), char(34)),
	 [CustomerID] = concat(char(34), isNull(cast([Groups].[CustomerID] as nvarchar(max)), '\N'), char(34)),
	 [Name] = concat(char(34), isNull(cast([Groups].[Name] as nvarchar(max)), '\N'), char(34)),
	 [DisplayName] = concat(char(34), isNull(cast([Groups].[DisplayName] as nvarchar(max)), '\N'), char(34)),
	 [Description] = concat(char(34), isNull(cast([Groups].[Description] as nvarchar(max)), '\N'), char(34)),
	 [InactiveFlag] = concat(char(34), isNull(cast([Groups].[InactiveFlag] as nvarchar(max)), '\N'), char(34)),
	 [EditorGroupID] = concat(char(34), isNull(cast([Groups].[EditorGroupID] as nvarchar(max)), '\N'), char(34)),
	 [CreateDate] = isNull(convert(varchar(50), [Groups].[CreateDate], 21), '\N'),
	 [CustomerUsageType] = concat(char(34), isNull(cast([Groups].[CustomerUsageType] as nvarchar(max)), '\N'), char(34))
from SinglePoint.dbo.Groups