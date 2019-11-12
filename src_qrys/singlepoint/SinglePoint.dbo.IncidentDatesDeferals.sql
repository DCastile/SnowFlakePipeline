select
	 [IncidentID] = concat(char(34), [IncidentDatesDeferals].[IncidentID], char(34)),
	 [EventID] = concat(char(34), [IncidentDatesDeferals].[EventID], char(34)),
	 [DeferalStart] = convert(varchar(50), [IncidentDatesDeferals].[DeferalStart], 21),
	 [DeferalEnd] = convert(varchar(50), [IncidentDatesDeferals].[DeferalEnd], 21),
	 [CreateDate] = convert(varchar(50), [IncidentDatesDeferals].[CreateDate], 21),
	 [ReasonID] = concat(char(34), [IncidentDatesDeferals].[ReasonID], char(34)),
	 [ReasonCode] = concat(char(34), [IncidentDatesDeferals].[ReasonCode], char(34)),
	 [FollowUpDate] = convert(varchar(50), [IncidentDatesDeferals].[FollowUpDate], 21),
	 [ScheduledDate] = convert(varchar(50), [IncidentDatesDeferals].[ScheduledDate], 21),
	 [FollowUpNotificationSent] = concat(char(34), [IncidentDatesDeferals].[FollowUpNotificationSent], char(34))
from SinglePoint.dbo.IncidentDatesDeferals