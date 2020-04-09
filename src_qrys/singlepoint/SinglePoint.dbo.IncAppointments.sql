select
	 [AppointmentID] = isNull(cast([IncAppointments].[AppointmentID] as varchar(36)), '\N'),
	 [IncidentID] = isNull(cast([IncAppointments].[IncidentID] as varchar(36)), '\N'),
	 [OnSiteDateTime] = isNull(convert(varchar(50), [IncAppointments].[OnSiteDateTime], 21), '\N'),
	 [OffsiteDateTime] = isNull(convert(varchar(50), [IncAppointments].[OffsiteDateTime], 21), '\N'),
	 [FEName] = concat(char(34), isNull(replace(cast([IncAppointments].[FEName] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [Comments] = concat(char(34), isNull(replace(cast([IncAppointments].[Comments] as nvarchar(1000)), char(34), char(0)), '\N'), char(34)),
	 [CreateDate] = isNull(convert(varchar(50), [IncAppointments].[CreateDate], 21), '\N'),
	 [CreateUserID] = isNull(cast([IncAppointments].[CreateUserID] as varchar(36)), '\N'),
	 [LastUpdateDate] = isNull(convert(varchar(50), [IncAppointments].[LastUpdateDate], 21), '\N'),
	 [LastUpdateUserID] = isNull(cast([IncAppointments].[LastUpdateUserID] as varchar(36)), '\N'),
	 [UTC_OnSiteDateTime] = isNull(convert(varchar(50), [IncAppointments].[UTC_OnSiteDateTime], 21), '\N'),
	 [UTC_OffSiteDateTime] = isNull(convert(varchar(50), [IncAppointments].[UTC_OffSiteDateTime], 21), '\N')
from SinglePoint.dbo.IncAppointments