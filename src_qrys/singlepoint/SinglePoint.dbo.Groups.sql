select
	 [GroupID] = isNull(cast([Groups].[GroupID] as varchar(36)), '\N'),
	 [CustomerID] = isNull(cast([Groups].[CustomerID] as varchar(36)), '\N'),
	 [Name] = concat(char(34), isNull(replace(cast([Groups].[Name] as nvarchar(125)), char(34), char(0)), '\N'), char(34)),
	 [DisplayName] = concat(char(34), isNull(replace(cast([Groups].[DisplayName] as nvarchar(75)), char(34), char(0)), '\N'), char(34)),
	 [Description] = concat(char(34), isNull(replace(cast([Groups].[Description] as nvarchar(255)), char(34), char(0)), '\N'), char(34)),
	 [InactiveFlag] = isNull(cast([Groups].[InactiveFlag] as varchar(36)), '\N'),
	 [EditorGroupID] = isNull(cast([Groups].[EditorGroupID] as varchar(36)), '\N'),
	 [CreateDate] = isNull(convert(varchar(50), [Groups].[CreateDate], 21), '\N'),
	 [CustomerUsageType] = isNull(cast([Groups].[CustomerUsageType] as varchar(36)), '\N')
from SinglePoint.dbo.Groups