select
	 [IncidentID] = concat(char(34), isNull(replace(cast([IncidentDatesDeferals].[IncidentID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [EventID] = concat(char(34), isNull(replace(cast([IncidentDatesDeferals].[EventID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [DeferalStart] = isNull(convert(varchar(50), [IncidentDatesDeferals].[DeferalStart], 21), '\N'),
	 [DeferalEnd] = isNull(convert(varchar(50), [IncidentDatesDeferals].[DeferalEnd], 21), '\N'),
	 [CreateDate] = isNull(convert(varchar(50), [IncidentDatesDeferals].[CreateDate], 21), '\N'),
	 [ReasonID] = concat(char(34), isNull(replace(cast([IncidentDatesDeferals].[ReasonID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ReasonCode] = concat(char(34), isNull(replace(cast([IncidentDatesDeferals].[ReasonCode] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [FollowUpDate] = isNull(convert(varchar(50), [IncidentDatesDeferals].[FollowUpDate], 21), '\N'),
	 [ScheduledDate] = isNull(convert(varchar(50), [IncidentDatesDeferals].[ScheduledDate], 21), '\N'),
	 [FollowUpNotificationSent] = concat(char(34), isNull(replace(cast([IncidentDatesDeferals].[FollowUpNotificationSent] as nvarchar(max)), char(34), char(0)), '\N'), char(34))
from SinglePoint.dbo.IncidentDatesDeferals with(nolock)