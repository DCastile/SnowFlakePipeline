select
	 [ID] = quotename([Incident_PendingCustomerResponse].[ID], char(34)),
	 [IncidentID] = quotename([Incident_PendingCustomerResponse].[IncidentID], char(34)),
	 [QueueID] = quotename([Incident_PendingCustomerResponse].[QueueID], char(34)),
	 [StartTime] = convert(varchar(50), [Incident_PendingCustomerResponse].[StartTime], 21),
	 [EndTime] = convert(varchar(50), [Incident_PendingCustomerResponse].[EndTime], 21),
	 [StartEventID] = quotename([Incident_PendingCustomerResponse].[StartEventID], char(34)),
	 [EndEventID] = quotename([Incident_PendingCustomerResponse].[EndEventID], char(34)),
	 [LastNextActionDue] = convert(varchar(50), [Incident_PendingCustomerResponse].[LastNextActionDue], 21)
from Ticketing.dbo.Incident_PendingCustomerResponse