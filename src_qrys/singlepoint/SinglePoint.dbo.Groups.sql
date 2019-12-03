select
	 [GroupID] = concat(char(34), isNull(replace(cast([Groups].[GroupID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [CustomerID] = concat(char(34), isNull(replace(cast([Groups].[CustomerID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Name] = concat(char(34), isNull(replace(cast([Groups].[Name] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [DisplayName] = concat(char(34), isNull(replace(cast([Groups].[DisplayName] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Description] = concat(char(34), isNull(replace(cast([Groups].[Description] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [InactiveFlag] = concat(char(34), isNull(replace(cast([Groups].[InactiveFlag] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [EditorGroupID] = concat(char(34), isNull(replace(cast([Groups].[EditorGroupID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [CreateDate] = isNull(convert(varchar(50), [Groups].[CreateDate], 21), '\N'),
	 [CustomerUsageType] = concat(char(34), isNull(replace(cast([Groups].[CustomerUsageType] as nvarchar(max)), char(34), char(0)), '\N'), char(34))
from SinglePoint.dbo.Groups with(nolock)