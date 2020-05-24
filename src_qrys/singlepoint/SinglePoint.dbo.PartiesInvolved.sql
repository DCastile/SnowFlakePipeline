select
	 [PartyInvolvedID] = isNull(cast([PartiesInvolved].[PartyInvolvedID] as varchar(36)), '\N'),
	 [FKID] = isNull(cast([PartiesInvolved].[FKID] as varchar(36)), '\N'),
	 [Type] = concat(char(34), isNull(replace(cast([PartiesInvolved].[Type] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [IsPrimary] = isNull(cast([PartiesInvolved].[IsPrimary] as varchar(36)), '\N'),
	 [Name] = concat(char(34), isNull(replace(cast([PartiesInvolved].[Name] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [InvolvementStart] = isNull(convert(varchar(50), [PartiesInvolved].[InvolvementStart], 21), '\N'),
	 [InvolvementEnd] = isNull(convert(varchar(50), [PartiesInvolved].[InvolvementEnd], 21), '\N'),
	 [Status] = concat(char(34), isNull(replace(cast([PartiesInvolved].[Status] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [ID] = isNull(cast([PartiesInvolved].[ID] as varchar(36)), '\N'),
	 [PhonePrimary] = concat(char(34), isNull(replace(cast([PartiesInvolved].[PhonePrimary] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [PhoneSecondary] = concat(char(34), isNull(replace(cast([PartiesInvolved].[PhoneSecondary] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [EMail] = concat(char(34), isNull(replace(cast([PartiesInvolved].[EMail] as nvarchar(500)), char(34), char(0)), '\N'), char(34)),
	 [EMailMobile] = concat(char(34), isNull(replace(cast([PartiesInvolved].[EMailMobile] as nvarchar(500)), char(34), char(0)), '\N'), char(34)),
	 [Address] = concat(char(34), isNull(replace(cast([PartiesInvolved].[Address] as nvarchar(2000)), char(34), char(0)), '\N'), char(34)),
	 [CreateByID] = isNull(cast([PartiesInvolved].[CreateByID] as varchar(36)), '\N'),
	 [CreateDate] = isNull(convert(varchar(50), [PartiesInvolved].[CreateDate], 21), '\N'),
	 [UpdateByID] = isNull(cast([PartiesInvolved].[UpdateByID] as varchar(36)), '\N'),
	 [UpdateDate] = isNull(convert(varchar(50), [PartiesInvolved].[UpdateDate], 21), '\N'),
	 [Notes] = concat(char(34), isNull(replace(cast([PartiesInvolved].[Notes] as nvarchar(4000)), char(34), char(0)), '\N'), char(34)),
	 [IsNotificationRecipient] = isNull(cast([PartiesInvolved].[IsNotificationRecipient] as varchar(36)), '\N'),
	 [UserID] = isNull(cast([PartiesInvolved].[UserID] as varchar(36)), '\N'),
	 [PartyTypeID] = isNull(cast([PartiesInvolved].[PartyTypeID] as varchar(36)), '\N')
from SinglePoint.dbo.PartiesInvolved with(nolock)