select
	 [ReportingTypeID] = quotename([OrgChart_ReportingTypes].[ReportingTypeID], char(34)),
	 [Name] = quotename([OrgChart_ReportingTypes].[Name], char(34)),
	 [Description] = quotename([OrgChart_ReportingTypes].[Description], char(34)),
	 [CreateDate] = convert(varchar(50), [OrgChart_ReportingTypes].[CreateDate], 21)
from SinglePoint.dbo.OrgChart_ReportingTypes