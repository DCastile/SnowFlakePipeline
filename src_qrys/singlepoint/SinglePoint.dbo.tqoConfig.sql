select
	 [ConfigGuid] = isNull(cast([tqoConfig].[ConfigGuid] as varchar(36)), '\N'),
	 [UnitGuid] = isNull(cast([tqoConfig].[UnitGuid] as varchar(36)), '\N'),
	 [BOMGuid] = isNull(cast([tqoConfig].[BOMGuid] as varchar(36)), '\N'),
	 [MASCompKey] = isNull(cast([tqoConfig].[MASCompKey] as varchar(36)), '\N'),
	 [Qty] = isNull(cast([tqoConfig].[Qty] as varchar(36)), '\N'),
	 [SerialNum] = concat(char(34), isNull(replace(cast([tqoConfig].[SerialNum] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [ShortDesc] = concat(char(34), isNull(replace(cast([tqoConfig].[ShortDesc] as nvarchar(40)), char(34), char(0)), '\N'), char(34)),
	 [ChangedByID] = isNull(cast([tqoConfig].[ChangedByID] as varchar(36)), '\N'),
	 [LastChanged] = isNull(convert(varchar(50), [tqoConfig].[LastChanged], 21), '\N'),
	 [CreateByID] = isNull(cast([tqoConfig].[CreateByID] as varchar(36)), '\N'),
	 [CreateDate] = isNull(convert(varchar(50), [tqoConfig].[CreateDate], 21), '\N'),
	 [ConfigRateBasis] = isNull(cast([tqoConfig].[ConfigRateBasis] as varchar(36)), '\N'),
	 [ConfigWrtyRateBasis] = isNull(cast([tqoConfig].[ConfigWrtyRateBasis] as varchar(36)), '\N'),
	 [Source] = concat(char(34), isNull(replace(cast([tqoConfig].[Source] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [SourceFKID] = isNull(cast([tqoConfig].[SourceFKID] as varchar(36)), '\N'),
	 [FromConfigID] = isNull(cast([tqoConfig].[FromConfigID] as varchar(36)), '\N')
from SinglePoint.dbo.tqoConfig with(nolock)