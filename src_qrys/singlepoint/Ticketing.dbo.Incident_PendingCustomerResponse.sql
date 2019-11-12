select
	 [ID] = concat(char(34), isNull(cast([Incident_PendingCustomerResponse].[ID] as nvarchar(max)), '\N'), char(34)),
	 [IncidentID] = concat(char(34), isNull(cast([Incident_PendingCustomerResponse].[IncidentID] as nvarchar(max)), '\N'), char(34)),
	 [QueueID] = concat(char(34), isNull(cast([Incident_PendingCustomerResponse].[QueueID] as nvarchar(max)), '\N'), char(34)),
	 [StartTime] = isNull(convert(varchar(50), [Incident_PendingCustomerResponse].[StartTime], 21), '\N'),
	 [EndTime] = isNull(convert(varchar(50), [Incident_PendingCustomerResponse].[EndTime], 21), '\N'),
	 [StartEventID] = concat(char(34), isNull(cast([Incident_PendingCustomerResponse].[StartEventID] as nvarchar(max)), '\N'), char(34)),
	 [EndEventID] = concat(char(34), isNull(cast([Incident_PendingCustomerResponse].[EndEventID] as nvarchar(max)), '\N'), char(34)),
	 [LastNextActionDue] = isNull(convert(varchar(50), [Incident_PendingCustomerResponse].[LastNextActionDue], 21), '\N')
from Ticketing.dbo.Incident_PendingCustomerResponse