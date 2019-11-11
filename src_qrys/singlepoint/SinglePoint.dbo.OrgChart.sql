select
	 [ManagerUserID] = quotename([OrgChart].[ManagerUserID], char(34)),
	 [SubordinateUserID] = quotename([OrgChart].[SubordinateUserID], char(34)),
	 [ReportingTypeID] = quotename([OrgChart].[ReportingTypeID], char(34)),
	 [CreatedByUserID] = quotename([OrgChart].[CreatedByUserID], char(34)),
	 [CreatedDate] = convert(varchar(50), [OrgChart].[CreatedDate], 21)
from SinglePoint.dbo.OrgChart