select
	 [MetricSpanID] = concat(char(34), isNull(replace(cast([Incident_Metric_Details].[MetricSpanID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [IncidentID] = concat(char(34), isNull(replace(cast([Incident_Metric_Details].[IncidentID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [MetricName] = concat(char(34), isNull(replace(cast([Incident_Metric_Details].[MetricName] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [MetricStartTime] = isNull(convert(varchar(50), [Incident_Metric_Details].[MetricStartTime], 21), '\N'),
	 [MetricStartEvent] = concat(char(34), isNull(replace(cast([Incident_Metric_Details].[MetricStartEvent] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [MetricEndTime] = isNull(convert(varchar(50), [Incident_Metric_Details].[MetricEndTime], 21), '\N'),
	 [MetricEndEvent] = concat(char(34), isNull(replace(cast([Incident_Metric_Details].[MetricEndEvent] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [PostProcessingStatus] = concat(char(34), isNull(replace(cast([Incident_Metric_Details].[PostProcessingStatus] as nvarchar(max)), char(34), char(0)), '\N'), char(34))
from Ticketing.dbo.Incident_Metric_Details with(nolock)