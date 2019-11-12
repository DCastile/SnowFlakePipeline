select
	 [MetricSpanID] = concat('"', [Incident_Metric_Details].[MetricSpanID], '"'),
	 [IncidentID] = concat('"', [Incident_Metric_Details].[IncidentID], '"'),
	 [MetricName] = concat('"', [Incident_Metric_Details].[MetricName], '"'),
	 [MetricStartTime] = convert(varchar(50), [Incident_Metric_Details].[MetricStartTime], 21),
	 [MetricStartEvent] = concat('"', [Incident_Metric_Details].[MetricStartEvent], '"'),
	 [MetricEndTime] = convert(varchar(50), [Incident_Metric_Details].[MetricEndTime], 21),
	 [MetricEndEvent] = concat('"', [Incident_Metric_Details].[MetricEndEvent], '"'),
	 [PostProcessingStatus] = concat('"', [Incident_Metric_Details].[PostProcessingStatus], '"')
from Ticketing.dbo.Incident_Metric_Details