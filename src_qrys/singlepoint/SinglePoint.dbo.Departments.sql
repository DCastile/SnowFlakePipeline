select
	 [DepartmentID] = concat(char(34), isNull(replace(cast([Departments].[DepartmentID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [DepartmentKey] = concat(char(34), isNull(replace(cast([Departments].[DepartmentKey] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Code] = concat(char(34), isNull(replace(cast([Departments].[Code] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Description] = concat(char(34), isNull(replace(cast([Departments].[Description] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [CreateDate] = isNull(convert(varchar(50), [Departments].[CreateDate], 21), '\N')
from SinglePoint.dbo.Departments with(nolock)