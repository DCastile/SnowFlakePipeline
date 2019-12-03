select
	 [ManagerUserID] = concat(char(34), isNull(replace(cast([OrgChart].[ManagerUserID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SubordinateUserID] = concat(char(34), isNull(replace(cast([OrgChart].[SubordinateUserID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ReportingTypeID] = concat(char(34), isNull(replace(cast([OrgChart].[ReportingTypeID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [CreatedByUserID] = concat(char(34), isNull(replace(cast([OrgChart].[CreatedByUserID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [CreatedDate] = isNull(convert(varchar(50), [OrgChart].[CreatedDate], 21), '\N')
from SinglePoint.dbo.OrgChart with(nolock)