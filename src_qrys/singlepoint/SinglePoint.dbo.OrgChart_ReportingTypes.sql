select
	 [ReportingTypeID] = concat('"', [OrgChart_ReportingTypes].[ReportingTypeID], '"'),
	 [Name] = concat('"', [OrgChart_ReportingTypes].[Name], '"'),
	 [Description] = concat('"', [OrgChart_ReportingTypes].[Description], '"'),
	 [CreateDate] = convert(varchar(50), [OrgChart_ReportingTypes].[CreateDate], 21)
from SinglePoint.dbo.OrgChart_ReportingTypes