select
	 [ManagerUserID] = isNull(quotename([ManagerUserID], char(34)), '\N'),
	 [SubordinateUserID] = isNull(quotename([SubordinateUserID], char(34)), '\N'),
	 [ReportingTypeID] = isNull(quotename([ReportingTypeID], char(34)), '\N'),
	 [CreatedByUserID] = isNull(quotename([CreatedByUserID], char(34)), '\N'),
	 [CreatedDate] = isNull(convert(varchar(50), [CreatedDate], 21), '\N')
from SinglePoint.dbo.OrgChart