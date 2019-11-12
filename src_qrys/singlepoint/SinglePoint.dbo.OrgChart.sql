select
	 [ManagerUserID] = concat('"', [OrgChart].[ManagerUserID], '"'),
	 [SubordinateUserID] = concat('"', [OrgChart].[SubordinateUserID], '"'),
	 [ReportingTypeID] = concat('"', [OrgChart].[ReportingTypeID], '"'),
	 [CreatedByUserID] = concat('"', [OrgChart].[CreatedByUserID], '"'),
	 [CreatedDate] = convert(varchar(50), [OrgChart].[CreatedDate], 21)
from SinglePoint.dbo.OrgChart