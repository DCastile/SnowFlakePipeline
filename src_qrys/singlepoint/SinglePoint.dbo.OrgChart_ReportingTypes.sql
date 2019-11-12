select
	 [ReportingTypeID] = concat(char(34), [OrgChart_ReportingTypes].[ReportingTypeID], char(34)),
	 [Name] = concat(char(34), [OrgChart_ReportingTypes].[Name], char(34)),
	 [Description] = concat(char(34), [OrgChart_ReportingTypes].[Description], char(34)),
	 [CreateDate] = convert(varchar(50), [OrgChart_ReportingTypes].[CreateDate], 21)
from SinglePoint.dbo.OrgChart_ReportingTypes