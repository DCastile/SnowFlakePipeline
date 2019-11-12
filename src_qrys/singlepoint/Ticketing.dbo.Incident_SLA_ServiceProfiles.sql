select
	 [SlaID] = concat('"', [Incident_SLA_ServiceProfiles].[SlaID], '"'),
	 [IncidentID] = concat('"', [Incident_SLA_ServiceProfiles].[IncidentID], '"'),
	 [SlaTermID] = concat('"', [Incident_SLA_ServiceProfiles].[SlaTermID], '"'),
	 [SlaServiceProfileID] = concat('"', [Incident_SLA_ServiceProfiles].[SlaServiceProfileID], '"'),
	 [SlaStartTime] = convert(varchar(50), [Incident_SLA_ServiceProfiles].[SlaStartTime], 21),
	 [SlaDeadline] = convert(varchar(50), [Incident_SLA_ServiceProfiles].[SlaDeadline], 21),
	 [SlaStatus] = concat('"', [Incident_SLA_ServiceProfiles].[SlaStatus], '"'),
	 [SlaTotalTimeDurationAllowed_Minutes] = concat('"', [Incident_SLA_ServiceProfiles].[SlaTotalTimeDurationAllowed_Minutes], '"'),
	 [SlaTimeDurationForClosedActivities_Minutes] = concat('"', [Incident_SLA_ServiceProfiles].[SlaTimeDurationForClosedActivities_Minutes], '"'),
	 [SlaDisposition] = concat('"', [Incident_SLA_ServiceProfiles].[SlaDisposition], '"'),
	 [SlaDispositionDeterminationDateTime] = convert(varchar(50), [Incident_SLA_ServiceProfiles].[SlaDispositionDeterminationDateTime], 21),
	 [SlaJeopordyStartTime] = convert(varchar(50), [Incident_SLA_ServiceProfiles].[SlaJeopordyStartTime], 21),
	 [SlaServiceCommitment] = concat('"', [Incident_SLA_ServiceProfiles].[SlaServiceCommitment], '"'),
	 [SlaDisposition_Actual] = concat('"', [Incident_SLA_ServiceProfiles].[SlaDisposition_Actual], '"')
from Ticketing.dbo.Incident_SLA_ServiceProfiles