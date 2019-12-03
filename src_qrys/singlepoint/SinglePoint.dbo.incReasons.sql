select
	 [incReasonID] = concat(char(34), isNull(replace(cast([incReasons].[incReasonID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [IncidentID] = concat(char(34), isNull(replace(cast([incReasons].[IncidentID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ReasonGenID] = concat(char(34), isNull(replace(cast([incReasons].[ReasonGenID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ReasonSpecID] = concat(char(34), isNull(replace(cast([incReasons].[ReasonSpecID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ResolutionGenID] = concat(char(34), isNull(replace(cast([incReasons].[ResolutionGenID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ResolutionSpecID] = concat(char(34), isNull(replace(cast([incReasons].[ResolutionSpecID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ReasonNotes] = concat(char(34), isNull(replace(cast([incReasons].[ReasonNotes] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ResolutionNotes] = concat(char(34), isNull(replace(cast([incReasons].[ResolutionNotes] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [CreateByID] = concat(char(34), isNull(replace(cast([incReasons].[CreateByID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [CreateDate] = isNull(convert(varchar(50), [incReasons].[CreateDate], 21), '\N'),
	 [ChangedByID] = concat(char(34), isNull(replace(cast([incReasons].[ChangedByID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [LastChanged] = isNull(convert(varchar(50), [incReasons].[LastChanged], 21), '\N'),
	 [SSIncReasonKey] = concat(char(34), isNull(replace(cast([incReasons].[SSIncReasonKey] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SPReasonInsert] = concat(char(34), isNull(replace(cast([incReasons].[SPReasonInsert] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SPReasonUpdate] = concat(char(34), isNull(replace(cast([incReasons].[SPReasonUpdate] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [MobileReasonInsert] = concat(char(34), isNull(replace(cast([incReasons].[MobileReasonInsert] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [MobileReasonUpdate] = concat(char(34), isNull(replace(cast([incReasons].[MobileReasonUpdate] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ImportFrom] = concat(char(34), isNull(replace(cast([incReasons].[ImportFrom] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ImportDate] = isNull(convert(varchar(50), [incReasons].[ImportDate], 21), '\N'),
	 [ImportBatch] = concat(char(34), isNull(replace(cast([incReasons].[ImportBatch] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ReasonVerySpecID] = concat(char(34), isNull(replace(cast([incReasons].[ReasonVerySpecID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ResolutionVerySpecID] = concat(char(34), isNull(replace(cast([incReasons].[ResolutionVerySpecID] as nvarchar(max)), char(34), char(0)), '\N'), char(34))
from SinglePoint.dbo.incReasons with(nolock)