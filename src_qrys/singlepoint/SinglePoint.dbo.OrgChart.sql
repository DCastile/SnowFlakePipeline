select
	 [ManagerUserID] = isNull(cast([OrgChart].[ManagerUserID] as varchar(36)), '\N'),
	 [SubordinateUserID] = isNull(cast([OrgChart].[SubordinateUserID] as varchar(36)), '\N'),
	 [ReportingTypeID] = isNull(cast([OrgChart].[ReportingTypeID] as varchar(36)), '\N'),
	 [CreatedByUserID] = isNull(cast([OrgChart].[CreatedByUserID] as varchar(36)), '\N'),
	 [CreatedDate] = isNull(convert(varchar(50), [OrgChart].[CreatedDate], 21), '\N')
from SinglePoint.dbo.OrgChart with(nolock)