select
	 [IncidentID] = isNull(quotename([IncidentID], char(34)), '\N'),
	 [IncidentKey] = isNull(quotename([IncidentKey], char(34)), '\N'),
	 [Date] = isNull(convert(varchar(50), [Date], 21), '\N'),
	 [Action] = isNull(quotename([Action], char(34)), '\N'),
	 [BatchID] = isNull(quotename([BatchID], char(34)), '\N'),
	 [CreateDate] = isNull(convert(varchar(50), [CreateDate], 21), '\N')
from SinglePoint.dbo.AsyncIncidents