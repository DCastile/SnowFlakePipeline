select
	 [Index] = isNull(cast([TimeZones].[Index] as varchar(36)), '\N'),
	 [TimeZoneID] = isNull(cast([TimeZones].[TimeZoneID] as varchar(36)), '\N'),
	 [SortOrder] = isNull(cast([TimeZones].[SortOrder] as varchar(36)), '\N'),
	 [Default] = isNull(cast([TimeZones].[Default] as varchar(36)), '\N'),
	 [Display] = concat(char(34), isNull(replace(cast([TimeZones].[Display] as nvarchar(255)), char(34), char(0)), '\N'), char(34)),
	 [DLT] = concat(char(34), isNull(replace(cast([TimeZones].[DLT] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [STD] = concat(char(34), isNull(replace(cast([TimeZones].[STD] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [MapID] = concat(char(34), isNull(replace(cast([TimeZones].[MapID] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [DateTimeUtilTimeZoneID] = isNull(cast([TimeZones].[DateTimeUtilTimeZoneID] as varchar(36)), '\N')
from SinglePoint.dbo.TimeZones