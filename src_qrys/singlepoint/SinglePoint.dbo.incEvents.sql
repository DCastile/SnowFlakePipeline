select
	 [IncidentID] = quotename([IncidentDatesDeferals].[IncidentID], char(34)),
	 [EventID] = quotename([IncidentDatesDeferals].[EventID], char(34)),
	 [DeferalStart] = convert(varchar(50), [IncidentDatesDeferals].[DeferalStart], 21),
	 [DeferalEnd] = convert(varchar(50), [IncidentDatesDeferals].[DeferalEnd], 21),
	 [CreateDate] = convert(varchar(50), [IncidentDatesDeferals].[CreateDate], 21),
	 [ReasonID] = quotename([IncidentDatesDeferals].[ReasonID], char(34)),
	 [ReasonCode] = quotename([IncidentDatesDeferals].[ReasonCode], char(34)),
	 [FollowUpDate] = convert(varchar(50), [IncidentDatesDeferals].[FollowUpDate], 21),
	 [ScheduledDate] = convert(varchar(50), [IncidentDatesDeferals].[ScheduledDate], 21),
	 [FollowUpNotificationSent] = quotename([IncidentDatesDeferals].[FollowUpNotificationSent], char(34))
from SinglePoint.dbo.IncidentDatesDeferals