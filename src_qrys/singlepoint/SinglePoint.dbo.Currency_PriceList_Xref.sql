select
	 [DepartmentID] = quotename([Departments].[DepartmentID], char(34)),
	 [DepartmentKey] = quotename([Departments].[DepartmentKey], char(34)),
	 [Code] = quotename([Departments].[Code], char(34)),
	 [Description] = quotename([Departments].[Description], char(34)),
	 [CreateDate] = convert(varchar(50), [Departments].[CreateDate], 21)
from SinglePoint.dbo.Departments