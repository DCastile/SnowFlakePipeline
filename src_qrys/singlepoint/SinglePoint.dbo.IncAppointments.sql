select
	 [AppointmentID] = quotename([IncAppointments].[AppointmentID], char(34)),
	 [IncidentID] = quotename([IncAppointments].[IncidentID], char(34)),
	 [OnSiteDateTime] = convert(varchar(50), [IncAppointments].[OnSiteDateTime], 21),
	 [OffsiteDateTime] = convert(varchar(50), [IncAppointments].[OffsiteDateTime], 21),
	 [FEName] = quotename([IncAppointments].[FEName], char(34)),
	 [Comments] = quotename([IncAppointments].[Comments], char(34)),
	 [CreateDate] = convert(varchar(50), [IncAppointments].[CreateDate], 21),
	 [CreateUserID] = quotename([IncAppointments].[CreateUserID], char(34)),
	 [LastUpdateDate] = convert(varchar(50), [IncAppointments].[LastUpdateDate], 21),
	 [LastUpdateUserID] = quotename([IncAppointments].[LastUpdateUserID], char(34)),
	 [UTC_OnSiteDateTime] = convert(varchar(50), [IncAppointments].[UTC_OnSiteDateTime], 21),
	 [UTC_OffSiteDateTime] = convert(varchar(50), [IncAppointments].[UTC_OffSiteDateTime], 21)
from SinglePoint.dbo.IncAppointments