select
	 [incCodeID] = isNull(cast([incCodes].[incCodeID] as varchar(36)), '\N'),
	 [incCodeTypeID] = isNull(cast([incCodes].[incCodeTypeID] as varchar(36)), '\N'),
	 [ParentID] = isNull(cast([incCodes].[ParentID] as varchar(36)), '\N'),
	 [Code] = concat(char(34), isNull(replace(cast([incCodes].[Code] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [CodeDescription] = concat(char(34), isNull(replace(cast([incCodes].[CodeDescription] as nvarchar(100)), char(34), char(0)), '\N'), char(34)),
	 [SeqNum] = isNull(cast([incCodes].[SeqNum] as varchar(36)), '\N'),
	 [UpdCallback] = isNull(cast([incCodes].[UpdCallback] as varchar(36)), '\N'),
	 [UpdRepair] = isNull(cast([incCodes].[UpdRepair] as varchar(36)), '\N'),
	 [SSTableName] = concat(char(34), isNull(replace(cast([incCodes].[SSTableName] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [SSKey] = isNull(cast([incCodes].[SSKey] as varchar(36)), '\N'),
	 [MobileFlag] = isNull(cast([incCodes].[MobileFlag] as varchar(36)), '\N'),
	 [CreateDate] = isNull(convert(varchar(50), [incCodes].[CreateDate], 21), '\N'),
	 [Notify] = isNull(cast([incCodes].[Notify] as varchar(36)), '\N'),
	 [InactiveFlag] = isNull(cast([incCodes].[InactiveFlag] as varchar(36)), '\N'),
	 [Sequence] = isNull(cast([incCodes].[Sequence] as varchar(36)), '\N'),
	 [InternalOnly] = isNull(cast([incCodes].[InternalOnly] as varchar(36)), '\N')
from SinglePoint.dbo.incCodes with(nolock)