select
	 [incCodeID] = concat('"', [incCodes].[incCodeID], '"'),
	 [incCodeTypeID] = concat('"', [incCodes].[incCodeTypeID], '"'),
	 [ParentID] = concat('"', [incCodes].[ParentID], '"'),
	 [Code] = concat('"', [incCodes].[Code], '"'),
	 [CodeDescription] = concat('"', [incCodes].[CodeDescription], '"'),
	 [SeqNum] = concat('"', [incCodes].[SeqNum], '"'),
	 [UpdCallback] = concat('"', [incCodes].[UpdCallback], '"'),
	 [UpdRepair] = concat('"', [incCodes].[UpdRepair], '"'),
	 [SSTableName] = concat('"', [incCodes].[SSTableName], '"'),
	 [SSKey] = concat('"', [incCodes].[SSKey], '"'),
	 [MobileFlag] = concat('"', [incCodes].[MobileFlag], '"'),
	 [CreateDate] = convert(varchar(50), [incCodes].[CreateDate], 21),
	 [Notify] = concat('"', [incCodes].[Notify], '"'),
	 [InactiveFlag] = concat('"', [incCodes].[InactiveFlag], '"'),
	 [Sequence] = concat('"', [incCodes].[Sequence], '"'),
	 [InternalOnly] = concat('"', [incCodes].[InternalOnly], '"')
from SinglePoint.dbo.incCodes