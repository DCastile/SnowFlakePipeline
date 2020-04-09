select
	 [SlaID] = isNull(cast([Incident_SLA_ServiceProfiles].[SlaID] as varchar(36)), '\N'),
	 [IncidentID] = isNull(cast([Incident_SLA_ServiceProfiles].[IncidentID] as varchar(36)), '\N'),
	 [SlaTermID] = isNull(cast([Incident_SLA_ServiceProfiles].[SlaTermID] as varchar(36)), '\N'),
	 [SlaServiceProfileID] = isNull(cast([Incident_SLA_ServiceProfiles].[SlaServiceProfileID] as varchar(36)), '\N'),
	 [SlaStartTime] = isNull(convert(varchar(50), [Incident_SLA_ServiceProfiles].[SlaStartTime], 21), '\N'),
	 [SlaDeadline] = isNull(convert(varchar(50), [Incident_SLA_ServiceProfiles].[SlaDeadline], 21), '\N'),
	 [SlaStatus] = concat(char(34), isNull(replace(cast([Incident_SLA_ServiceProfiles].[SlaStatus] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [SlaTotalTimeDurationAllowed_Minutes] = isNull(cast([Incident_SLA_ServiceProfiles].[SlaTotalTimeDurationAllowed_Minutes] as varchar(36)), '\N'),
	 [SlaTimeDurationForClosedActivities_Minutes] = isNull(cast([Incident_SLA_ServiceProfiles].[SlaTimeDurationForClosedActivities_Minutes] as varchar(36)), '\N'),
	 [SlaDisposition] = concat(char(34), isNull(replace(cast([Incident_SLA_ServiceProfiles].[SlaDisposition] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [SlaDispositionDeterminationDateTime] = isNull(convert(varchar(50), [Incident_SLA_ServiceProfiles].[SlaDispositionDeterminationDateTime], 21), '\N'),
	 [SlaJeopordyStartTime] = isNull(convert(varchar(50), [Incident_SLA_ServiceProfiles].[SlaJeopordyStartTime], 21), '\N'),
	 [SlaServiceCommitment] = concat(char(34), isNull(replace(cast([Incident_SLA_ServiceProfiles].[SlaServiceCommitment] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [SlaDisposition_Actual] = concat(char(34), isNull(replace(cast([Incident_SLA_ServiceProfiles].[SlaDisposition_Actual] as nvarchar(50)), char(34), char(0)), '\N'), char(34))
from Ticketing.dbo.Incident_SLA_ServiceProfiles