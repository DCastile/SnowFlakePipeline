select
	 [Index] = concat(char(34), isNull(cast([TimeZones].[Index] as nvarchar(max)), '\N'), char(34)),
	 [TimeZoneID] = concat(char(34), isNull(cast([TimeZones].[TimeZoneID] as nvarchar(max)), '\N'), char(34)),
	 [SortOrder] = concat(char(34), isNull(cast([TimeZones].[SortOrder] as nvarchar(max)), '\N'), char(34)),
	 [Default] = concat(char(34), isNull(cast([TimeZones].[Default] as nvarchar(max)), '\N'), char(34)),
	 [Display] = concat(char(34), isNull(cast([TimeZones].[Display] as nvarchar(max)), '\N'), char(34)),
	 [DLT] = concat(char(34), isNull(cast([TimeZones].[DLT] as nvarchar(max)), '\N'), char(34)),
	 [STD] = concat(char(34), isNull(cast([TimeZones].[STD] as nvarchar(max)), '\N'), char(34)),
	 [MapID] = concat(char(34), isNull(cast([TimeZones].[MapID] as nvarchar(max)), '\N'), char(34)),
	 [DateTimeUtilTimeZoneID] = concat(char(34), isNull(cast([TimeZones].[DateTimeUtilTimeZoneID] as nvarchar(max)), '\N'), char(34))
from SinglePoint.dbo.TimeZones