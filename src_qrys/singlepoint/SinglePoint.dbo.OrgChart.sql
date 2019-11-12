select
	 [ManagerUserID] = concat(char(34), isNull(cast([OrgChart].[ManagerUserID] as nvarchar(max)), '\N'), char(34)),
	 [SubordinateUserID] = concat(char(34), isNull(cast([OrgChart].[SubordinateUserID] as nvarchar(max)), '\N'), char(34)),
	 [ReportingTypeID] = concat(char(34), isNull(cast([OrgChart].[ReportingTypeID] as nvarchar(max)), '\N'), char(34)),
	 [CreatedByUserID] = concat(char(34), isNull(cast([OrgChart].[CreatedByUserID] as nvarchar(max)), '\N'), char(34)),
	 [CreatedDate] = isNull(convert(varchar(50), [OrgChart].[CreatedDate], 21), '\N')
from SinglePoint.dbo.OrgChart