select
	 [incCodeID] = concat(char(34), isNull(cast([incCodes].[incCodeID] as nvarchar(max)), '\N'), char(34)),
	 [incCodeTypeID] = concat(char(34), isNull(cast([incCodes].[incCodeTypeID] as nvarchar(max)), '\N'), char(34)),
	 [ParentID] = concat(char(34), isNull(cast([incCodes].[ParentID] as nvarchar(max)), '\N'), char(34)),
	 [Code] = concat(char(34), isNull(cast([incCodes].[Code] as nvarchar(max)), '\N'), char(34)),
	 [CodeDescription] = concat(char(34), isNull(cast([incCodes].[CodeDescription] as nvarchar(max)), '\N'), char(34)),
	 [SeqNum] = concat(char(34), isNull(cast([incCodes].[SeqNum] as nvarchar(max)), '\N'), char(34)),
	 [UpdCallback] = concat(char(34), isNull(cast([incCodes].[UpdCallback] as nvarchar(max)), '\N'), char(34)),
	 [UpdRepair] = concat(char(34), isNull(cast([incCodes].[UpdRepair] as nvarchar(max)), '\N'), char(34)),
	 [SSTableName] = concat(char(34), isNull(cast([incCodes].[SSTableName] as nvarchar(max)), '\N'), char(34)),
	 [SSKey] = concat(char(34), isNull(cast([incCodes].[SSKey] as nvarchar(max)), '\N'), char(34)),
	 [MobileFlag] = concat(char(34), isNull(cast([incCodes].[MobileFlag] as nvarchar(max)), '\N'), char(34)),
	 [CreateDate] = isNull(convert(varchar(50), [incCodes].[CreateDate], 21), '\N'),
	 [Notify] = concat(char(34), isNull(cast([incCodes].[Notify] as nvarchar(max)), '\N'), char(34)),
	 [InactiveFlag] = concat(char(34), isNull(cast([incCodes].[InactiveFlag] as nvarchar(max)), '\N'), char(34)),
	 [Sequence] = concat(char(34), isNull(cast([incCodes].[Sequence] as nvarchar(max)), '\N'), char(34)),
	 [InternalOnly] = concat(char(34), isNull(cast([incCodes].[InternalOnly] as nvarchar(max)), '\N'), char(34))
from SinglePoint.dbo.incCodes