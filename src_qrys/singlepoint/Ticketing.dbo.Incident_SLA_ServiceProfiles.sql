select
	 [SlaID] = quotename([Incident_SLA_ServiceProfiles].[SlaID], char(34)),
	 [IncidentID] = quotename([Incident_SLA_ServiceProfiles].[IncidentID], char(34)),
	 [SlaTermID] = quotename([Incident_SLA_ServiceProfiles].[SlaTermID], char(34)),
	 [SlaServiceProfileID] = quotename([Incident_SLA_ServiceProfiles].[SlaServiceProfileID], char(34)),
	 [SlaStartTime] = convert(varchar(50), [Incident_SLA_ServiceProfiles].[SlaStartTime], 21),
	 [SlaDeadline] = convert(varchar(50), [Incident_SLA_ServiceProfiles].[SlaDeadline], 21),
	 [SlaStatus] = quotename([Incident_SLA_ServiceProfiles].[SlaStatus], char(34)),
	 [SlaTotalTimeDurationAllowed_Minutes] = quotename([Incident_SLA_ServiceProfiles].[SlaTotalTimeDurationAllowed_Minutes], char(34)),
	 [SlaTimeDurationForClosedActivities_Minutes] = quotename([Incident_SLA_ServiceProfiles].[SlaTimeDurationForClosedActivities_Minutes], char(34)),
	 [SlaDisposition] = quotename([Incident_SLA_ServiceProfiles].[SlaDisposition], char(34)),
	 [SlaDispositionDeterminationDateTime] = convert(varchar(50), [Incident_SLA_ServiceProfiles].[SlaDispositionDeterminationDateTime], 21),
	 [SlaJeopordyStartTime] = convert(varchar(50), [Incident_SLA_ServiceProfiles].[SlaJeopordyStartTime], 21),
	 [SlaServiceCommitment] = quotename([Incident_SLA_ServiceProfiles].[SlaServiceCommitment], char(34)),
	 [SlaDisposition_Actual] = quotename([Incident_SLA_ServiceProfiles].[SlaDisposition_Actual], char(34))
from Ticketing.dbo.Incident_SLA_ServiceProfiles