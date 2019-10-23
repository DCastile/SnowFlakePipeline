select
	 [ReportingTypeID] = isNull(quotename([ReportingTypeID], char(34)), '\N'),
	 [Name] = isNull(quotename([Name], char(34)), '\N'),
	 [Description] = isNull(quotename([Description], char(34)), '\N'),
	 [CreateDate] = isNull(convert(varchar(50), [CreateDate], 21), '\N')
from SinglePoint.dbo.OrgChart_ReportingTypes