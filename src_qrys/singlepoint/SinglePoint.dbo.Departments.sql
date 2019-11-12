select
	 [DepartmentID] = concat(char(34), [Departments].[DepartmentID], char(34)),
	 [DepartmentKey] = concat(char(34), [Departments].[DepartmentKey], char(34)),
	 [Code] = concat(char(34), [Departments].[Code], char(34)),
	 [Description] = concat(char(34), [Departments].[Description], char(34)),
	 [CreateDate] = convert(varchar(50), [Departments].[CreateDate], 21)
from SinglePoint.dbo.Departments