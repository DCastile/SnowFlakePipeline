select
	 [incCodeID] = concat(char(34), isNull(replace(cast([incCodes].[incCodeID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [incCodeTypeID] = concat(char(34), isNull(replace(cast([incCodes].[incCodeTypeID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ParentID] = concat(char(34), isNull(replace(cast([incCodes].[ParentID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Code] = concat(char(34), isNull(replace(cast([incCodes].[Code] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [CodeDescription] = concat(char(34), isNull(replace(cast([incCodes].[CodeDescription] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SeqNum] = concat(char(34), isNull(replace(cast([incCodes].[SeqNum] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [UpdCallback] = concat(char(34), isNull(replace(cast([incCodes].[UpdCallback] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [UpdRepair] = concat(char(34), isNull(replace(cast([incCodes].[UpdRepair] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SSTableName] = concat(char(34), isNull(replace(cast([incCodes].[SSTableName] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SSKey] = concat(char(34), isNull(replace(cast([incCodes].[SSKey] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [MobileFlag] = concat(char(34), isNull(replace(cast([incCodes].[MobileFlag] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [CreateDate] = isNull(convert(varchar(50), [incCodes].[CreateDate], 21), '\N'),
	 [Notify] = concat(char(34), isNull(replace(cast([incCodes].[Notify] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [InactiveFlag] = concat(char(34), isNull(replace(cast([incCodes].[InactiveFlag] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Sequence] = concat(char(34), isNull(replace(cast([incCodes].[Sequence] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [InternalOnly] = concat(char(34), isNull(replace(cast([incCodes].[InternalOnly] as nvarchar(max)), char(34), char(0)), '\N'), char(34))
from SinglePoint.dbo.incCodes