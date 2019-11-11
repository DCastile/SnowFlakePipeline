select
	 [incReasonID] = quotename([incReasons].[incReasonID], char(34)),
	 [IncidentID] = quotename([incReasons].[IncidentID], char(34)),
	 [ReasonGenID] = quotename([incReasons].[ReasonGenID], char(34)),
	 [ReasonSpecID] = quotename([incReasons].[ReasonSpecID], char(34)),
	 [ResolutionGenID] = quotename([incReasons].[ResolutionGenID], char(34)),
	 [ResolutionSpecID] = quotename([incReasons].[ResolutionSpecID], char(34)),
	 [ReasonNotes] = quotename([incReasons].[ReasonNotes], char(34)),
	 [ResolutionNotes] = quotename([incReasons].[ResolutionNotes], char(34)),
	 [CreateByID] = quotename([incReasons].[CreateByID], char(34)),
	 [CreateDate] = convert(varchar(50), [incReasons].[CreateDate], 21),
	 [ChangedByID] = quotename([incReasons].[ChangedByID], char(34)),
	 [LastChanged] = convert(varchar(50), [incReasons].[LastChanged], 21),
	 [SSIncReasonKey] = quotename([incReasons].[SSIncReasonKey], char(34)),
	 [SPReasonInsert] = quotename([incReasons].[SPReasonInsert], char(34)),
	 [SPReasonUpdate] = quotename([incReasons].[SPReasonUpdate], char(34)),
	 [MobileReasonInsert] = quotename([incReasons].[MobileReasonInsert], char(34)),
	 [MobileReasonUpdate] = quotename([incReasons].[MobileReasonUpdate], char(34)),
	 [ImportFrom] = quotename([incReasons].[ImportFrom], char(34)),
	 [ImportDate] = convert(varchar(50), [incReasons].[ImportDate], 21),
	 [ImportBatch] = quotename([incReasons].[ImportBatch], char(34)),
	 [ReasonVerySpecID] = quotename([incReasons].[ReasonVerySpecID], char(34)),
	 [ResolutionVerySpecID] = quotename([incReasons].[ResolutionVerySpecID], char(34))
from SinglePoint.dbo.incReasons