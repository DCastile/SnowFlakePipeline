select
	 [MetricSpanID] = quotename([Incident_Metric_Details].[MetricSpanID], char(34)),
	 [IncidentID] = quotename([Incident_Metric_Details].[IncidentID], char(34)),
	 [MetricName] = quotename([Incident_Metric_Details].[MetricName], char(34)),
	 [MetricStartTime] = convert(varchar(50), [Incident_Metric_Details].[MetricStartTime], 21),
	 [MetricStartEvent] = quotename([Incident_Metric_Details].[MetricStartEvent], char(34)),
	 [MetricEndTime] = convert(varchar(50), [Incident_Metric_Details].[MetricEndTime], 21),
	 [MetricEndEvent] = quotename([Incident_Metric_Details].[MetricEndEvent], char(34)),
	 [PostProcessingStatus] = quotename([Incident_Metric_Details].[PostProcessingStatus], char(34))
from Ticketing.dbo.Incident_Metric_Details