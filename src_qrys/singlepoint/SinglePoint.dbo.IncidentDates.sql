select
	 [IncidentID] = isNull(cast([IncidentDates].[IncidentID] as varchar(36)), '\N'),
	 [Created] = isNull(convert(varchar(50), [IncidentDates].[Created], 21), '\N'),
	 [Assigned] = isNull(convert(varchar(50), [IncidentDates].[Assigned], 21), '\N'),
	 [Callback] = isNull(convert(varchar(50), [IncidentDates].[Callback], 21), '\N'),
	 [FollowUp] = isNull(convert(varchar(50), [IncidentDates].[FollowUp], 21), '\N'),
	 [OnSite] = isNull(convert(varchar(50), [IncidentDates].[OnSite], 21), '\N'),
	 [OnSiteWithParts] = isNull(convert(varchar(50), [IncidentDates].[OnSiteWithParts], 21), '\N'),
	 [OnSiteWithoutParts] = isNull(convert(varchar(50), [IncidentDates].[OnSiteWithoutParts], 21), '\N'),
	 [CustomerDefered] = isNull(convert(varchar(50), [IncidentDates].[CustomerDefered], 21), '\N'),
	 [CustomerDeferedUntil] = isNull(convert(varchar(50), [IncidentDates].[CustomerDeferedUntil], 21), '\N'),
	 [Scheduled] = isNull(convert(varchar(50), [IncidentDates].[Scheduled], 21), '\N'),
	 [ScheduledFor] = isNull(convert(varchar(50), [IncidentDates].[ScheduledFor], 21), '\N'),
	 [Resolved] = isNull(convert(varchar(50), [IncidentDates].[Resolved], 21), '\N'),
	 [Closed] = isNull(convert(varchar(50), [IncidentDates].[Closed], 21), '\N'),
	 [LastUpdateEvent] = isNull(convert(varchar(50), [IncidentDates].[LastUpdateEvent], 21), '\N'),
	 [LastSlaImpactingEvent] = isNull(convert(varchar(50), [IncidentDates].[LastSlaImpactingEvent], 21), '\N'),
	 [LastOnSite] = isNull(convert(varchar(50), [IncidentDates].[LastOnSite], 21), '\N'),
	 [LastCustomerDeferred] = isNull(convert(varchar(50), [IncidentDates].[LastCustomerDeferred], 21), '\N')
from SinglePoint.dbo.IncidentDates with(nolock)