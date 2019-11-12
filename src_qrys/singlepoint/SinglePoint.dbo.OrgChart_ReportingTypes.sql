select
	 [ReportingTypeID] = concat(char(34), isNull(replace(cast([OrgChart_ReportingTypes].[ReportingTypeID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Name] = concat(char(34), isNull(replace(cast([OrgChart_ReportingTypes].[Name] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Description] = concat(char(34), isNull(replace(cast([OrgChart_ReportingTypes].[Description] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [CreateDate] = isNull(convert(varchar(50), [OrgChart_ReportingTypes].[CreateDate], 21), '\N')
from SinglePoint.dbo.OrgChart_ReportingTypes