select
	 [AppointmentID] = concat('"', [IncAppointments].[AppointmentID], '"'),
	 [IncidentID] = concat('"', [IncAppointments].[IncidentID], '"'),
	 [OnSiteDateTime] = convert(varchar(50), [IncAppointments].[OnSiteDateTime], 21),
	 [OffsiteDateTime] = convert(varchar(50), [IncAppointments].[OffsiteDateTime], 21),
	 [FEName] = concat('"', [IncAppointments].[FEName], '"'),
	 [Comments] = concat('"', [IncAppointments].[Comments], '"'),
	 [CreateDate] = convert(varchar(50), [IncAppointments].[CreateDate], 21),
	 [CreateUserID] = concat('"', [IncAppointments].[CreateUserID], '"'),
	 [LastUpdateDate] = convert(varchar(50), [IncAppointments].[LastUpdateDate], 21),
	 [LastUpdateUserID] = concat('"', [IncAppointments].[LastUpdateUserID], '"'),
	 [UTC_OnSiteDateTime] = convert(varchar(50), [IncAppointments].[UTC_OnSiteDateTime], 21),
	 [UTC_OffSiteDateTime] = convert(varchar(50), [IncAppointments].[UTC_OffSiteDateTime], 21)
from SinglePoint.dbo.IncAppointments