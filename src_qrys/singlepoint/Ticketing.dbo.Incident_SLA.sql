select
	 [IncidentSlaID] = concat(char(34), isNull(replace(cast([Incident_SLA].[IncidentSlaID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [IncidentID] = concat(char(34), isNull(replace(cast([Incident_SLA].[IncidentID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SlaTermID] = concat(char(34), isNull(replace(cast([Incident_SLA].[SlaTermID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SlaCallProfileID] = concat(char(34), isNull(replace(cast([Incident_SLA].[SlaCallProfileID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SlaServiceProfileID] = concat(char(34), isNull(replace(cast([Incident_SLA].[SlaServiceProfileID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SlaStartTime] = isNull(convert(varchar(50), [Incident_SLA].[SlaStartTime], 21), '\N'),
	 [SlaDeadline] = isNull(convert(varchar(50), [Incident_SLA].[SlaDeadline], 21), '\N'),
	 [SlaStatus] = concat(char(34), isNull(replace(cast([Incident_SLA].[SlaStatus] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SlaTotalTimeDurationAllowed_Minutes] = concat(char(34), isNull(replace(cast([Incident_SLA].[SlaTotalTimeDurationAllowed_Minutes] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SlaTimeDurationForClosedActivities_Minutes] = concat(char(34), isNull(replace(cast([Incident_SLA].[SlaTimeDurationForClosedActivities_Minutes] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SlaDisposition] = concat(char(34), isNull(replace(cast([Incident_SLA].[SlaDisposition] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SlaDispositionDeterminationDateTime] = isNull(convert(varchar(50), [Incident_SLA].[SlaDispositionDeterminationDateTime], 21), '\N'),
	 [SlaRequiredTravelStartTime] = isNull(convert(varchar(50), [Incident_SLA].[SlaRequiredTravelStartTime], 21), '\N'),
	 [SlaJeopordyStartTime] = isNull(convert(varchar(50), [Incident_SLA].[SlaJeopordyStartTime], 21), '\N'),
	 [SlaServiceCommitment] = concat(char(34), isNull(replace(cast([Incident_SLA].[SlaServiceCommitment] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SlaAcceptanceDateTime] = isNull(convert(varchar(50), [Incident_SLA].[SlaAcceptanceDateTime], 21), '\N'),
	 [SlaTimeZoneKey] = concat(char(34), isNull(replace(cast([Incident_SLA].[SlaTimeZoneKey] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SlaDisposition_Actual] = concat(char(34), isNull(replace(cast([Incident_SLA].[SlaDisposition_Actual] as nvarchar(max)), char(34), char(0)), '\N'), char(34))
from Ticketing.dbo.Incident_SLA with(nolock)