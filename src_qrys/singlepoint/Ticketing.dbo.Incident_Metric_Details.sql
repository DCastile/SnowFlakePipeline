select
	 [MetricSpanID] = isNull(cast([Incident_Metric_Details].[MetricSpanID] as varchar(36)), '\N'),
	 [IncidentID] = isNull(cast([Incident_Metric_Details].[IncidentID] as varchar(36)), '\N'),
	 [MetricName] = concat(char(34), isNull(replace(cast([Incident_Metric_Details].[MetricName] as nvarchar(200)), char(34), char(0)), '\N'), char(34)),
	 [MetricStartTime] = isNull(convert(varchar(50), [Incident_Metric_Details].[MetricStartTime], 21), '\N'),
	 [MetricStartEvent] = isNull(cast([Incident_Metric_Details].[MetricStartEvent] as varchar(36)), '\N'),
	 [MetricEndTime] = isNull(convert(varchar(50), [Incident_Metric_Details].[MetricEndTime], 21), '\N'),
	 [MetricEndEvent] = isNull(cast([Incident_Metric_Details].[MetricEndEvent] as varchar(36)), '\N'),
	 [PostProcessingStatus] = concat(char(34), isNull(replace(cast([Incident_Metric_Details].[PostProcessingStatus] as nvarchar(50)), char(34), char(0)), '\N'), char(34))
from Ticketing.dbo.Incident_Metric_Details