select
	 [AppointmentID] = concat(char(34), [IncAppointments].[AppointmentID], char(34)),
	 [IncidentID] = concat(char(34), [IncAppointments].[IncidentID], char(34)),
	 [OnSiteDateTime] = convert(varchar(50), [IncAppointments].[OnSiteDateTime], 21),
	 [OffsiteDateTime] = convert(varchar(50), [IncAppointments].[OffsiteDateTime], 21),
	 [FEName] = concat(char(34), [IncAppointments].[FEName], char(34)),
	 [Comments] = concat(char(34), [IncAppointments].[Comments], char(34)),
	 [CreateDate] = convert(varchar(50), [IncAppointments].[CreateDate], 21),
	 [CreateUserID] = concat(char(34), [IncAppointments].[CreateUserID], char(34)),
	 [LastUpdateDate] = convert(varchar(50), [IncAppointments].[LastUpdateDate], 21),
	 [LastUpdateUserID] = concat(char(34), [IncAppointments].[LastUpdateUserID], char(34)),
	 [UTC_OnSiteDateTime] = convert(varchar(50), [IncAppointments].[UTC_OnSiteDateTime], 21),
	 [UTC_OffSiteDateTime] = convert(varchar(50), [IncAppointments].[UTC_OffSiteDateTime], 21)
from SinglePoint.dbo.IncAppointments