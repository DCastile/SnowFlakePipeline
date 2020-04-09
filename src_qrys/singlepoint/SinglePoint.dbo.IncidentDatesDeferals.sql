select
	 [IncidentID] = isNull(cast([IncidentDatesDeferals].[IncidentID] as varchar(36)), '\N'),
	 [EventID] = isNull(cast([IncidentDatesDeferals].[EventID] as varchar(36)), '\N'),
	 [DeferalStart] = isNull(convert(varchar(50), [IncidentDatesDeferals].[DeferalStart], 21), '\N'),
	 [DeferalEnd] = isNull(convert(varchar(50), [IncidentDatesDeferals].[DeferalEnd], 21), '\N'),
	 [CreateDate] = isNull(convert(varchar(50), [IncidentDatesDeferals].[CreateDate], 21), '\N'),
	 [ReasonID] = isNull(cast([IncidentDatesDeferals].[ReasonID] as varchar(36)), '\N'),
	 [ReasonCode] = concat(char(34), isNull(replace(cast([IncidentDatesDeferals].[ReasonCode] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [FollowUpDate] = isNull(convert(varchar(50), [IncidentDatesDeferals].[FollowUpDate], 21), '\N'),
	 [ScheduledDate] = isNull(convert(varchar(50), [IncidentDatesDeferals].[ScheduledDate], 21), '\N'),
	 [FollowUpNotificationSent] = isNull(cast([IncidentDatesDeferals].[FollowUpNotificationSent] as varchar(36)), '\N')
from SinglePoint.dbo.IncidentDatesDeferals