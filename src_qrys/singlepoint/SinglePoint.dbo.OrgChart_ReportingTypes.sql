select
	 [ReportingTypeID] = isNull(cast([OrgChart_ReportingTypes].[ReportingTypeID] as varchar(36)), '\N'),
	 [Name] = concat(char(34), isNull(replace(cast([OrgChart_ReportingTypes].[Name] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [Description] = concat(char(34), isNull(replace(cast([OrgChart_ReportingTypes].[Description] as nvarchar(255)), char(34), char(0)), '\N'), char(34)),
	 [CreateDate] = isNull(convert(varchar(50), [OrgChart_ReportingTypes].[CreateDate], 21), '\N')
from SinglePoint.dbo.OrgChart_ReportingTypes