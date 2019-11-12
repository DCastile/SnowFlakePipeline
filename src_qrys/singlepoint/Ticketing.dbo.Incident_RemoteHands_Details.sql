select
	 [TransactionID] = concat(char(34), [Incident_RemoteHands_Details].[TransactionID], char(34)),
	 [SurveyID] = concat(char(34), [Incident_RemoteHands_Details].[SurveyID], char(34)),
	 [Type] = concat(char(34), [Incident_RemoteHands_Details].[Type], char(34)),
	 [Quantity] = concat(char(34), [Incident_RemoteHands_Details].[Quantity], char(34)),
	 [UnitRate] = concat(char(34), [Incident_RemoteHands_Details].[UnitRate], char(34)),
	 [CalculatedRate] = concat(char(34), [Incident_RemoteHands_Details].[CalculatedRate], char(34)),
	 [Description] = concat(char(34), [Incident_RemoteHands_Details].[Description], char(34)),
	 [DocumentID] = concat(char(34), [Incident_RemoteHands_Details].[DocumentID], char(34)),
	 [CreatedByUserID] = concat(char(34), [Incident_RemoteHands_Details].[CreatedByUserID], char(34)),
	 [CreateDate] = convert(varchar(50), [Incident_RemoteHands_Details].[CreateDate], 21),
	 [ActualOnsite] = convert(varchar(50), [Incident_RemoteHands_Details].[ActualOnsite], 21),
	 [ActualOffsite] = convert(varchar(50), [Incident_RemoteHands_Details].[ActualOffsite], 21),
	 [NumMinutesOnSite] = concat(char(34), [Incident_RemoteHands_Details].[NumMinutesOnSite], char(34)),
	 [Distance] = concat(char(34), [Incident_RemoteHands_Details].[Distance], char(34)),
	 [UnitOfMeasure] = concat(char(34), [Incident_RemoteHands_Details].[UnitOfMeasure], char(34)),
	 [ExtendedTimeReason] = concat(char(34), [Incident_RemoteHands_Details].[ExtendedTimeReason], char(34))
from Ticketing.dbo.Incident_RemoteHands_Details