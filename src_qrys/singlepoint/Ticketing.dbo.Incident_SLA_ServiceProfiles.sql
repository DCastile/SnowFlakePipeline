select
	 [SlaID] = concat(char(34), isNull(cast([Incident_SLA_ServiceProfiles].[SlaID] as nvarchar(max)), '\N'), char(34)),
	 [IncidentID] = concat(char(34), isNull(cast([Incident_SLA_ServiceProfiles].[IncidentID] as nvarchar(max)), '\N'), char(34)),
	 [SlaTermID] = concat(char(34), isNull(cast([Incident_SLA_ServiceProfiles].[SlaTermID] as nvarchar(max)), '\N'), char(34)),
	 [SlaServiceProfileID] = concat(char(34), isNull(cast([Incident_SLA_ServiceProfiles].[SlaServiceProfileID] as nvarchar(max)), '\N'), char(34)),
	 [SlaStartTime] = isNull(convert(varchar(50), [Incident_SLA_ServiceProfiles].[SlaStartTime], 21), '\N'),
	 [SlaDeadline] = isNull(convert(varchar(50), [Incident_SLA_ServiceProfiles].[SlaDeadline], 21), '\N'),
	 [SlaStatus] = concat(char(34), isNull(cast([Incident_SLA_ServiceProfiles].[SlaStatus] as nvarchar(max)), '\N'), char(34)),
	 [SlaTotalTimeDurationAllowed_Minutes] = concat(char(34), isNull(cast([Incident_SLA_ServiceProfiles].[SlaTotalTimeDurationAllowed_Minutes] as nvarchar(max)), '\N'), char(34)),
	 [SlaTimeDurationForClosedActivities_Minutes] = concat(char(34), isNull(cast([Incident_SLA_ServiceProfiles].[SlaTimeDurationForClosedActivities_Minutes] as nvarchar(max)), '\N'), char(34)),
	 [SlaDisposition] = concat(char(34), isNull(cast([Incident_SLA_ServiceProfiles].[SlaDisposition] as nvarchar(max)), '\N'), char(34)),
	 [SlaDispositionDeterminationDateTime] = isNull(convert(varchar(50), [Incident_SLA_ServiceProfiles].[SlaDispositionDeterminationDateTime], 21), '\N'),
	 [SlaJeopordyStartTime] = isNull(convert(varchar(50), [Incident_SLA_ServiceProfiles].[SlaJeopordyStartTime], 21), '\N'),
	 [SlaServiceCommitment] = concat(char(34), isNull(cast([Incident_SLA_ServiceProfiles].[SlaServiceCommitment] as nvarchar(max)), '\N'), char(34)),
	 [SlaDisposition_Actual] = concat(char(34), isNull(cast([Incident_SLA_ServiceProfiles].[SlaDisposition_Actual] as nvarchar(max)), '\N'), char(34))
from Ticketing.dbo.Incident_SLA_ServiceProfiles