select
	 [AppointmentID] = concat(char(34), isNull(replace(cast([IncAppointments].[AppointmentID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [IncidentID] = concat(char(34), isNull(replace(cast([IncAppointments].[IncidentID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [OnSiteDateTime] = isNull(convert(varchar(50), [IncAppointments].[OnSiteDateTime], 21), '\N'),
	 [OffsiteDateTime] = isNull(convert(varchar(50), [IncAppointments].[OffsiteDateTime], 21), '\N'),
	 [FEName] = concat(char(34), isNull(replace(cast([IncAppointments].[FEName] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Comments] = concat(char(34), isNull(replace(cast([IncAppointments].[Comments] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [CreateDate] = isNull(convert(varchar(50), [IncAppointments].[CreateDate], 21), '\N'),
	 [CreateUserID] = concat(char(34), isNull(replace(cast([IncAppointments].[CreateUserID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [LastUpdateDate] = isNull(convert(varchar(50), [IncAppointments].[LastUpdateDate], 21), '\N'),
	 [LastUpdateUserID] = concat(char(34), isNull(replace(cast([IncAppointments].[LastUpdateUserID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [UTC_OnSiteDateTime] = isNull(convert(varchar(50), [IncAppointments].[UTC_OnSiteDateTime], 21), '\N'),
	 [UTC_OffSiteDateTime] = isNull(convert(varchar(50), [IncAppointments].[UTC_OffSiteDateTime], 21), '\N')
from SinglePoint.dbo.IncAppointments with(nolock)