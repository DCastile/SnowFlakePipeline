select
	 [TransactionID] = isNull(cast([Incident_RemoteHands_Details].[TransactionID] as varchar(36)), '\N'),
	 [SurveyID] = isNull(cast([Incident_RemoteHands_Details].[SurveyID] as varchar(36)), '\N'),
	 [Type] = concat(char(34), isNull(replace(cast([Incident_RemoteHands_Details].[Type] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [Quantity] = isNull(cast([Incident_RemoteHands_Details].[Quantity] as varchar(36)), '\N'),
	 [UnitRate] = isNull(cast([Incident_RemoteHands_Details].[UnitRate] as varchar(36)), '\N'),
	 [CalculatedRate] = isNull(cast([Incident_RemoteHands_Details].[CalculatedRate] as varchar(36)), '\N'),
	 [Description] = concat(char(34), isNull(replace(cast([Incident_RemoteHands_Details].[Description] as nvarchar(255)), char(34), char(0)), '\N'), char(34)),
	 [DocumentID] = isNull(cast([Incident_RemoteHands_Details].[DocumentID] as varchar(36)), '\N'),
	 [CreatedByUserID] = isNull(cast([Incident_RemoteHands_Details].[CreatedByUserID] as varchar(36)), '\N'),
	 [CreateDate] = isNull(convert(varchar(50), [Incident_RemoteHands_Details].[CreateDate], 21), '\N'),
	 [ActualOnsite] = isNull(convert(varchar(50), [Incident_RemoteHands_Details].[ActualOnsite], 21), '\N'),
	 [ActualOffsite] = isNull(convert(varchar(50), [Incident_RemoteHands_Details].[ActualOffsite], 21), '\N'),
	 [NumMinutesOnSite] = isNull(cast([Incident_RemoteHands_Details].[NumMinutesOnSite] as varchar(36)), '\N'),
	 [Distance] = isNull(cast([Incident_RemoteHands_Details].[Distance] as varchar(36)), '\N'),
	 [UnitOfMeasure] = concat(char(34), isNull(replace(cast([Incident_RemoteHands_Details].[UnitOfMeasure] as nvarchar(10)), char(34), char(0)), '\N'), char(34)),
	 [ExtendedTimeReason] = concat(char(34), isNull(replace(cast([Incident_RemoteHands_Details].[ExtendedTimeReason] as nvarchar(1000)), char(34), char(0)), '\N'), char(34))
from Ticketing.dbo.Incident_RemoteHands_Details