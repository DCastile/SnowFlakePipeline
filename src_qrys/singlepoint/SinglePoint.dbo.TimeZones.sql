select
	 [Index] = concat('"', [TimeZones].[Index], '"'),
	 [TimeZoneID] = concat('"', [TimeZones].[TimeZoneID], '"'),
	 [SortOrder] = concat('"', [TimeZones].[SortOrder], '"'),
	 [Default] = concat('"', [TimeZones].[Default], '"'),
	 [Display] = concat('"', [TimeZones].[Display], '"'),
	 [DLT] = concat('"', [TimeZones].[DLT], '"'),
	 [STD] = concat('"', [TimeZones].[STD], '"'),
	 [MapID] = concat('"', [TimeZones].[MapID], '"'),
	 [DateTimeUtilTimeZoneID] = concat('"', [TimeZones].[DateTimeUtilTimeZoneID], '"')
from SinglePoint.dbo.TimeZones