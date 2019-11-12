select
	 [TransactionID] = concat('"', [Incident_RemoteHands_Details].[TransactionID], '"'),
	 [SurveyID] = concat('"', [Incident_RemoteHands_Details].[SurveyID], '"'),
	 [Type] = concat('"', [Incident_RemoteHands_Details].[Type], '"'),
	 [Quantity] = concat('"', [Incident_RemoteHands_Details].[Quantity], '"'),
	 [UnitRate] = concat('"', [Incident_RemoteHands_Details].[UnitRate], '"'),
	 [CalculatedRate] = concat('"', [Incident_RemoteHands_Details].[CalculatedRate], '"'),
	 [Description] = concat('"', [Incident_RemoteHands_Details].[Description], '"'),
	 [DocumentID] = concat('"', [Incident_RemoteHands_Details].[DocumentID], '"'),
	 [CreatedByUserID] = concat('"', [Incident_RemoteHands_Details].[CreatedByUserID], '"'),
	 [CreateDate] = convert(varchar(50), [Incident_RemoteHands_Details].[CreateDate], 21),
	 [ActualOnsite] = convert(varchar(50), [Incident_RemoteHands_Details].[ActualOnsite], 21),
	 [ActualOffsite] = convert(varchar(50), [Incident_RemoteHands_Details].[ActualOffsite], 21),
	 [NumMinutesOnSite] = concat('"', [Incident_RemoteHands_Details].[NumMinutesOnSite], '"'),
	 [Distance] = concat('"', [Incident_RemoteHands_Details].[Distance], '"'),
	 [UnitOfMeasure] = concat('"', [Incident_RemoteHands_Details].[UnitOfMeasure], '"'),
	 [ExtendedTimeReason] = concat('"', [Incident_RemoteHands_Details].[ExtendedTimeReason], '"')
from Ticketing.dbo.Incident_RemoteHands_Details