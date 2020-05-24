select
	 [ID] = isNull(cast([Incident_PendingCustomerResponse].[ID] as varchar(36)), '\N'),
	 [IncidentID] = isNull(cast([Incident_PendingCustomerResponse].[IncidentID] as varchar(36)), '\N'),
	 [QueueID] = isNull(cast([Incident_PendingCustomerResponse].[QueueID] as varchar(36)), '\N'),
	 [StartTime] = isNull(convert(varchar(50), [Incident_PendingCustomerResponse].[StartTime], 21), '\N'),
	 [EndTime] = isNull(convert(varchar(50), [Incident_PendingCustomerResponse].[EndTime], 21), '\N'),
	 [StartEventID] = isNull(cast([Incident_PendingCustomerResponse].[StartEventID] as varchar(36)), '\N'),
	 [EndEventID] = isNull(cast([Incident_PendingCustomerResponse].[EndEventID] as varchar(36)), '\N'),
	 [LastNextActionDue] = isNull(convert(varchar(50), [Incident_PendingCustomerResponse].[LastNextActionDue], 21), '\N')
from Ticketing.dbo.Incident_PendingCustomerResponse with(nolock)