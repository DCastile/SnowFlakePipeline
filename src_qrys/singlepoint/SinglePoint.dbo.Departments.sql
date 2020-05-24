select
	 [DepartmentID] = isNull(cast([Departments].[DepartmentID] as varchar(36)), '\N'),
	 [DepartmentKey] = isNull(cast([Departments].[DepartmentKey] as varchar(36)), '\N'),
	 [Code] = concat(char(34), isNull(replace(cast([Departments].[Code] as nvarchar(10)), char(34), char(0)), '\N'), char(34)),
	 [Description] = concat(char(34), isNull(replace(cast([Departments].[Description] as nvarchar(40)), char(34), char(0)), '\N'), char(34)),
	 [CreateDate] = isNull(convert(varchar(50), [Departments].[CreateDate], 21), '\N')
from SinglePoint.dbo.Departments with(nolock)