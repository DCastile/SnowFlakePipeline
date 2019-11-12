select
	 [ID] = concat(char(34), [Incident_PendingCustomerResponse].[ID], char(34)),
	 [IncidentID] = concat(char(34), [Incident_PendingCustomerResponse].[IncidentID], char(34)),
	 [QueueID] = concat(char(34), [Incident_PendingCustomerResponse].[QueueID], char(34)),
	 [StartTime] = convert(varchar(50), [Incident_PendingCustomerResponse].[StartTime], 21),
	 [EndTime] = convert(varchar(50), [Incident_PendingCustomerResponse].[EndTime], 21),
	 [StartEventID] = concat(char(34), [Incident_PendingCustomerResponse].[StartEventID], char(34)),
	 [EndEventID] = concat(char(34), [Incident_PendingCustomerResponse].[EndEventID], char(34)),
	 [LastNextActionDue] = convert(varchar(50), [Incident_PendingCustomerResponse].[LastNextActionDue], 21)
from Ticketing.dbo.Incident_PendingCustomerResponse