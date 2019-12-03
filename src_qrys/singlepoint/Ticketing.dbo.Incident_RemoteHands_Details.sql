select
	 [TransactionID] = concat(char(34), isNull(replace(cast([Incident_RemoteHands_Details].[TransactionID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SurveyID] = concat(char(34), isNull(replace(cast([Incident_RemoteHands_Details].[SurveyID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Type] = concat(char(34), isNull(replace(cast([Incident_RemoteHands_Details].[Type] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Quantity] = concat(char(34), isNull(replace(cast([Incident_RemoteHands_Details].[Quantity] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [UnitRate] = concat(char(34), isNull(replace(cast([Incident_RemoteHands_Details].[UnitRate] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [CalculatedRate] = concat(char(34), isNull(replace(cast([Incident_RemoteHands_Details].[CalculatedRate] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Description] = concat(char(34), isNull(replace(cast([Incident_RemoteHands_Details].[Description] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [DocumentID] = concat(char(34), isNull(replace(cast([Incident_RemoteHands_Details].[DocumentID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [CreatedByUserID] = concat(char(34), isNull(replace(cast([Incident_RemoteHands_Details].[CreatedByUserID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [CreateDate] = isNull(convert(varchar(50), [Incident_RemoteHands_Details].[CreateDate], 21), '\N'),
	 [ActualOnsite] = isNull(convert(varchar(50), [Incident_RemoteHands_Details].[ActualOnsite], 21), '\N'),
	 [ActualOffsite] = isNull(convert(varchar(50), [Incident_RemoteHands_Details].[ActualOffsite], 21), '\N'),
	 [NumMinutesOnSite] = concat(char(34), isNull(replace(cast([Incident_RemoteHands_Details].[NumMinutesOnSite] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Distance] = concat(char(34), isNull(replace(cast([Incident_RemoteHands_Details].[Distance] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [UnitOfMeasure] = concat(char(34), isNull(replace(cast([Incident_RemoteHands_Details].[UnitOfMeasure] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ExtendedTimeReason] = concat(char(34), isNull(replace(cast([Incident_RemoteHands_Details].[ExtendedTimeReason] as nvarchar(max)), char(34), char(0)), '\N'), char(34))
from Ticketing.dbo.Incident_RemoteHands_Details with(nolock)