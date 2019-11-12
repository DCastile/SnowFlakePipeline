select
	 [IncidentID] = concat('"', [IncidentDatesDeferals].[IncidentID], '"'),
	 [EventID] = concat('"', [IncidentDatesDeferals].[EventID], '"'),
	 [DeferalStart] = convert(varchar(50), [IncidentDatesDeferals].[DeferalStart], 21),
	 [DeferalEnd] = convert(varchar(50), [IncidentDatesDeferals].[DeferalEnd], 21),
	 [CreateDate] = convert(varchar(50), [IncidentDatesDeferals].[CreateDate], 21),
	 [ReasonID] = concat('"', [IncidentDatesDeferals].[ReasonID], '"'),
	 [ReasonCode] = concat('"', [IncidentDatesDeferals].[ReasonCode], '"'),
	 [FollowUpDate] = convert(varchar(50), [IncidentDatesDeferals].[FollowUpDate], 21),
	 [ScheduledDate] = convert(varchar(50), [IncidentDatesDeferals].[ScheduledDate], 21),
	 [FollowUpNotificationSent] = concat('"', [IncidentDatesDeferals].[FollowUpNotificationSent], '"')
from SinglePoint.dbo.IncidentDatesDeferals