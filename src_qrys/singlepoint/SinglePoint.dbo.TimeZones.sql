select
	 [Index] = quotename([TimeZones].[Index], char(34)),
	 [TimeZoneID] = quotename([TimeZones].[TimeZoneID], char(34)),
	 [SortOrder] = quotename([TimeZones].[SortOrder], char(34)),
	 [Default] = quotename([TimeZones].[Default], char(34)),
	 [Display] = quotename([TimeZones].[Display], char(34)),
	 [DLT] = quotename([TimeZones].[DLT], char(34)),
	 [STD] = quotename([TimeZones].[STD], char(34)),
	 [MapID] = quotename([TimeZones].[MapID], char(34)),
	 [DateTimeUtilTimeZoneID] = quotename([TimeZones].[DateTimeUtilTimeZoneID], char(34))
from SinglePoint.dbo.TimeZones