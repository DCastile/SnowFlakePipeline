select
	 [ServiceProfileID] = isNull(cast([SLA_ServiceProfile].[ServiceProfileID] as varchar(36)), '\N'),
	 [Name] = concat(char(34), isNull(replace(cast([SLA_ServiceProfile].[Name] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [Description] = concat(char(34), isNull(replace(cast([SLA_ServiceProfile].[Description] as nvarchar(255)), char(34), char(0)), '\N'), char(34)),
	 [LanguageResource_Key_Name] = isNull(cast([SLA_ServiceProfile].[LanguageResource_Key_Name] as varchar(36)), '\N'),
	 [LanguageResource_Key_Description] = isNull(cast([SLA_ServiceProfile].[LanguageResource_Key_Description] as varchar(36)), '\N'),
	 [ServiceCommitment] = concat(char(34), isNull(replace(cast([SLA_ServiceProfile].[ServiceCommitment] as nvarchar(255)), char(34), char(0)), '\N'), char(34)),
	 [ServiceDurationType] = concat(char(34), isNull(replace(cast([SLA_ServiceProfile].[ServiceDurationType] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [HoursToComplete] = isNull(cast([SLA_ServiceProfile].[HoursToComplete] as varchar(36)), '\N'),
	 [CreateByID] = isNull(cast([SLA_ServiceProfile].[CreateByID] as varchar(36)), '\N'),
	 [CreateDateTime] = isNull(convert(varchar(50), [SLA_ServiceProfile].[CreateDateTime], 21), '\N'),
	 [UpdateByID] = isNull(cast([SLA_ServiceProfile].[UpdateByID] as varchar(36)), '\N'),
	 [UpdateDateTime] = isNull(convert(varchar(50), [SLA_ServiceProfile].[UpdateDateTime], 21), '\N')
from Ticketing.dbo.SLA_ServiceProfile with(nolock)