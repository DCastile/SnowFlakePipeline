select
	 [DataPointID] = isNull(cast([Incident_ExtendedData].[DataPointID] as varchar(36)), '\N'),
	 [IncidentID] = isNull(cast([Incident_ExtendedData].[IncidentID] as varchar(36)), '\N'),
	 [EventID] = isNull(cast([Incident_ExtendedData].[EventID] as varchar(36)), '\N'),
	 [Name] = concat(char(34), isNull(replace(cast([Incident_ExtendedData].[Name] as nvarchar(255)), char(34), char(0)), '\N'), char(34)),
	 [Value] = concat(char(34), isNull(replace(cast([Incident_ExtendedData].[Value] as nvarchar(3998)), char(34), char(0)), '\N'), char(34)),
	 [FieldID] = isNull(cast([Incident_ExtendedData].[FieldID] as varchar(36)), '\N'),
	 [ValueID] = isNull(cast([Incident_ExtendedData].[ValueID] as varchar(36)), '\N'),
	 [ValueDateTimeLocal] = isNull(convert(varchar(50), [Incident_ExtendedData].[ValueDateTimeLocal], 21), '\N'),
	 [ValueDateTimeUTC] = isNull(convert(varchar(50), [Incident_ExtendedData].[ValueDateTimeUTC], 21), '\N'),
	 [ValueTimeLocal] = isNull(convert(varchar(50), [Incident_ExtendedData].[ValueTimeLocal], 21), '\N'),
	 [ValueTimeUTC] = isNull(convert(varchar(50), [Incident_ExtendedData].[ValueTimeUTC], 21), '\N'),
	 [ValueBool] = isNull(cast([Incident_ExtendedData].[ValueBool] as varchar(36)), '\N'),
	 [ValueDate] = isNull(convert(varchar(50), [Incident_ExtendedData].[ValueDate], 21), '\N'),
	 [TimeZoneOffset] = isNull(cast([Incident_ExtendedData].[TimeZoneOffset] as varchar(36)), '\N')
from Ticketing.dbo.Incident_ExtendedData with(nolock)