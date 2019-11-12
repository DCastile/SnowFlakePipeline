select
	 [ID] = concat('"', [Incident_PendingCustomerResponse].[ID], '"'),
	 [IncidentID] = concat('"', [Incident_PendingCustomerResponse].[IncidentID], '"'),
	 [QueueID] = concat('"', [Incident_PendingCustomerResponse].[QueueID], '"'),
	 [StartTime] = convert(varchar(50), [Incident_PendingCustomerResponse].[StartTime], 21),
	 [EndTime] = convert(varchar(50), [Incident_PendingCustomerResponse].[EndTime], 21),
	 [StartEventID] = concat('"', [Incident_PendingCustomerResponse].[StartEventID], '"'),
	 [EndEventID] = concat('"', [Incident_PendingCustomerResponse].[EndEventID], '"'),
	 [LastNextActionDue] = convert(varchar(50), [Incident_PendingCustomerResponse].[LastNextActionDue], 21)
from Ticketing.dbo.Incident_PendingCustomerResponse