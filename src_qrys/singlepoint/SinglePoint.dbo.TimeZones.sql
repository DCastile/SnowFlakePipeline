select
	 [Index] = concat(char(34), [TimeZones].[Index], char(34)),
	 [TimeZoneID] = concat(char(34), [TimeZones].[TimeZoneID], char(34)),
	 [SortOrder] = concat(char(34), [TimeZones].[SortOrder], char(34)),
	 [Default] = concat(char(34), [TimeZones].[Default], char(34)),
	 [Display] = concat(char(34), [TimeZones].[Display], char(34)),
	 [DLT] = concat(char(34), [TimeZones].[DLT], char(34)),
	 [STD] = concat(char(34), [TimeZones].[STD], char(34)),
	 [MapID] = concat(char(34), [TimeZones].[MapID], char(34)),
	 [DateTimeUtilTimeZoneID] = concat(char(34), [TimeZones].[DateTimeUtilTimeZoneID], char(34))
from SinglePoint.dbo.TimeZones