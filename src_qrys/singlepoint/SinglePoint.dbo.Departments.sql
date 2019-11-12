select
	 [DepartmentID] = concat('"', [Departments].[DepartmentID], '"'),
	 [DepartmentKey] = concat('"', [Departments].[DepartmentKey], '"'),
	 [Code] = concat('"', [Departments].[Code], '"'),
	 [Description] = concat('"', [Departments].[Description], '"'),
	 [CreateDate] = convert(varchar(50), [Departments].[CreateDate], 21)
from SinglePoint.dbo.Departments