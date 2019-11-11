select
	 [TransactionID] = quotename([Incident_RemoteHands_Details].[TransactionID], char(34)),
	 [SurveyID] = quotename([Incident_RemoteHands_Details].[SurveyID], char(34)),
	 [Type] = quotename([Incident_RemoteHands_Details].[Type], char(34)),
	 [Quantity] = quotename([Incident_RemoteHands_Details].[Quantity], char(34)),
	 [UnitRate] = quotename([Incident_RemoteHands_Details].[UnitRate], char(34)),
	 [CalculatedRate] = quotename([Incident_RemoteHands_Details].[CalculatedRate], char(34)),
	 [Description] = quotename([Incident_RemoteHands_Details].[Description], char(34)),
	 [DocumentID] = quotename([Incident_RemoteHands_Details].[DocumentID], char(34)),
	 [CreatedByUserID] = quotename([Incident_RemoteHands_Details].[CreatedByUserID], char(34)),
	 [CreateDate] = convert(varchar(50), [Incident_RemoteHands_Details].[CreateDate], 21),
	 [ActualOnsite] = convert(varchar(50), [Incident_RemoteHands_Details].[ActualOnsite], 21),
	 [ActualOffsite] = convert(varchar(50), [Incident_RemoteHands_Details].[ActualOffsite], 21),
	 [NumMinutesOnSite] = quotename([Incident_RemoteHands_Details].[NumMinutesOnSite], char(34)),
	 [Distance] = quotename([Incident_RemoteHands_Details].[Distance], char(34)),
	 [UnitOfMeasure] = quotename([Incident_RemoteHands_Details].[UnitOfMeasure], char(34)),
	 [ExtendedTimeReason] = quotename([Incident_RemoteHands_Details].[ExtendedTimeReason], char(34))
from Ticketing.dbo.Incident_RemoteHands_Details