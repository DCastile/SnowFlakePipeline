select
	 [MetricSpanID] = concat(char(34), [Incident_Metric_Details].[MetricSpanID], char(34)),
	 [IncidentID] = concat(char(34), [Incident_Metric_Details].[IncidentID], char(34)),
	 [MetricName] = concat(char(34), [Incident_Metric_Details].[MetricName], char(34)),
	 [MetricStartTime] = convert(varchar(50), [Incident_Metric_Details].[MetricStartTime], 21),
	 [MetricStartEvent] = concat(char(34), [Incident_Metric_Details].[MetricStartEvent], char(34)),
	 [MetricEndTime] = convert(varchar(50), [Incident_Metric_Details].[MetricEndTime], 21),
	 [MetricEndEvent] = concat(char(34), [Incident_Metric_Details].[MetricEndEvent], char(34)),
	 [PostProcessingStatus] = concat(char(34), [Incident_Metric_Details].[PostProcessingStatus], char(34))
from Ticketing.dbo.Incident_Metric_Details