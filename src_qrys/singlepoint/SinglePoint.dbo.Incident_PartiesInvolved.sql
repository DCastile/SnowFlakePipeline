select
	 [IncidentID] = isNull(cast([Incident_PartiesInvolved].[IncidentID] as varchar(36)), '\N'),
	 [PartyInvolvedID] = isNull(cast([Incident_PartiesInvolved].[PartyInvolvedID] as varchar(36)), '\N'),
	 [Type] = concat(char(34), isNull(replace(cast([Incident_PartiesInvolved].[Type] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [IsPrimary] = isNull(cast([Incident_PartiesInvolved].[IsPrimary] as varchar(36)), '\N'),
	 [Name] = concat(char(34), isNull(replace(cast([Incident_PartiesInvolved].[Name] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [InvolvementStart] = isNull(convert(varchar(50), [Incident_PartiesInvolved].[InvolvementStart], 21), '\N'),
	 [InvolvementEnd] = isNull(convert(varchar(50), [Incident_PartiesInvolved].[InvolvementEnd], 21), '\N'),
	 [Status] = concat(char(34), isNull(replace(cast([Incident_PartiesInvolved].[Status] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [PartyTicketNumber] = concat(char(34), isNull(replace(cast([Incident_PartiesInvolved].[PartyTicketNumber] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [ID] = isNull(cast([Incident_PartiesInvolved].[ID] as varchar(36)), '\N'),
	 [Phone_Primary] = concat(char(34), isNull(replace(cast([Incident_PartiesInvolved].[Phone_Primary] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [Phone_Secondary] = concat(char(34), isNull(replace(cast([Incident_PartiesInvolved].[Phone_Secondary] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [EMail] = concat(char(34), isNull(replace(cast([Incident_PartiesInvolved].[EMail] as nvarchar(500)), char(34), char(0)), '\N'), char(34)),
	 [Address] = concat(char(34), isNull(replace(cast([Incident_PartiesInvolved].[Address] as nvarchar(2000)), char(34), char(0)), '\N'), char(34)),
	 [EventID] = isNull(cast([Incident_PartiesInvolved].[EventID] as varchar(36)), '\N'),
	 [CreateByID] = isNull(cast([Incident_PartiesInvolved].[CreateByID] as varchar(36)), '\N'),
	 [CreateBy] = concat(char(34), isNull(replace(cast([Incident_PartiesInvolved].[CreateBy] as nvarchar(255)), char(34), char(0)), '\N'), char(34)),
	 [CreateDate] = isNull(convert(varchar(50), [Incident_PartiesInvolved].[CreateDate], 21), '\N'),
	 [UpdateByID] = isNull(cast([Incident_PartiesInvolved].[UpdateByID] as varchar(36)), '\N'),
	 [UpdateBy] = concat(char(34), isNull(replace(cast([Incident_PartiesInvolved].[UpdateBy] as nvarchar(255)), char(34), char(0)), '\N'), char(34)),
	 [UpdateDate] = isNull(convert(varchar(50), [Incident_PartiesInvolved].[UpdateDate], 21), '\N'),
	 [Notes] = concat(char(34), isNull(replace(cast([Incident_PartiesInvolved].[Notes] as nvarchar(4000)), char(34), char(0)), '\N'), char(34)),
	 [EMailMobile] = concat(char(34), isNull(replace(cast([Incident_PartiesInvolved].[EMailMobile] as nvarchar(500)), char(34), char(0)), '\N'), char(34)),
	 [IsNotificationRecipient] = isNull(cast([Incident_PartiesInvolved].[IsNotificationRecipient] as varchar(36)), '\N'),
	 [SubType] = concat(char(34), isNull(replace(cast([Incident_PartiesInvolved].[SubType] as nvarchar(50)), char(34), char(0)), '\N'), char(34))
from SinglePoint.dbo.Incident_PartiesInvolved with(nolock)