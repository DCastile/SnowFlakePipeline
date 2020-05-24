select
	 [incReasonID] = isNull(cast([incReasons].[incReasonID] as varchar(36)), '\N'),
	 [IncidentID] = isNull(cast([incReasons].[IncidentID] as varchar(36)), '\N'),
	 [ReasonGenID] = isNull(cast([incReasons].[ReasonGenID] as varchar(36)), '\N'),
	 [ReasonSpecID] = isNull(cast([incReasons].[ReasonSpecID] as varchar(36)), '\N'),
	 [ResolutionGenID] = isNull(cast([incReasons].[ResolutionGenID] as varchar(36)), '\N'),
	 [ResolutionSpecID] = isNull(cast([incReasons].[ResolutionSpecID] as varchar(36)), '\N'),
	 [CreateByID] = isNull(cast([incReasons].[CreateByID] as varchar(36)), '\N'),
	 [CreateDate] = isNull(convert(varchar(50), [incReasons].[CreateDate], 21), '\N'),
	 [ChangedByID] = isNull(cast([incReasons].[ChangedByID] as varchar(36)), '\N'),
	 [LastChanged] = isNull(convert(varchar(50), [incReasons].[LastChanged], 21), '\N'),
	 [SSIncReasonKey] = isNull(cast([incReasons].[SSIncReasonKey] as varchar(36)), '\N'),
	 [SPReasonInsert] = isNull(cast([incReasons].[SPReasonInsert] as varchar(36)), '\N'),
	 [SPReasonUpdate] = isNull(cast([incReasons].[SPReasonUpdate] as varchar(36)), '\N'),
	 [MobileReasonInsert] = isNull(cast([incReasons].[MobileReasonInsert] as varchar(36)), '\N'),
	 [MobileReasonUpdate] = isNull(cast([incReasons].[MobileReasonUpdate] as varchar(36)), '\N'),
	 [ImportFrom] = concat(char(34), isNull(replace(cast([incReasons].[ImportFrom] as nvarchar(255)), char(34), char(0)), '\N'), char(34)),
	 [ImportDate] = isNull(convert(varchar(50), [incReasons].[ImportDate], 21), '\N'),
	 [ImportBatch] = isNull(cast([incReasons].[ImportBatch] as varchar(36)), '\N'),
	 [ReasonVerySpecID] = isNull(cast([incReasons].[ReasonVerySpecID] as varchar(36)), '\N'),
	 [ResolutionVerySpecID] = isNull(cast([incReasons].[ResolutionVerySpecID] as varchar(36)), '\N')
from SinglePoint.dbo.incReasons with(nolock)