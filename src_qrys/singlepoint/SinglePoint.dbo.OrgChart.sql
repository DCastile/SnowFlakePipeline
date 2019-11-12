select
	 [ManagerUserID] = concat(char(34), [OrgChart].[ManagerUserID], char(34)),
	 [SubordinateUserID] = concat(char(34), [OrgChart].[SubordinateUserID], char(34)),
	 [ReportingTypeID] = concat(char(34), [OrgChart].[ReportingTypeID], char(34)),
	 [CreatedByUserID] = concat(char(34), [OrgChart].[CreatedByUserID], char(34)),
	 [CreatedDate] = convert(varchar(50), [OrgChart].[CreatedDate], 21)
from SinglePoint.dbo.OrgChart