select
	 [DepartmentID] = concat(char(34), isNull(cast([Departments].[DepartmentID] as nvarchar(max)), '\N'), char(34)),
	 [DepartmentKey] = concat(char(34), isNull(cast([Departments].[DepartmentKey] as nvarchar(max)), '\N'), char(34)),
	 [Code] = concat(char(34), isNull(cast([Departments].[Code] as nvarchar(max)), '\N'), char(34)),
	 [Description] = concat(char(34), isNull(cast([Departments].[Description] as nvarchar(max)), '\N'), char(34)),
	 [CreateDate] = isNull(convert(varchar(50), [Departments].[CreateDate], 21), '\N')
from SinglePoint.dbo.Departments