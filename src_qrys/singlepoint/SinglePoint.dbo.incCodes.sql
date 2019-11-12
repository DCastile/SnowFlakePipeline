select
	 [incCodeID] = concat(char(34), [incCodes].[incCodeID], char(34)),
	 [incCodeTypeID] = concat(char(34), [incCodes].[incCodeTypeID], char(34)),
	 [ParentID] = concat(char(34), [incCodes].[ParentID], char(34)),
	 [Code] = concat(char(34), [incCodes].[Code], char(34)),
	 [CodeDescription] = concat(char(34), [incCodes].[CodeDescription], char(34)),
	 [SeqNum] = concat(char(34), [incCodes].[SeqNum], char(34)),
	 [UpdCallback] = concat(char(34), [incCodes].[UpdCallback], char(34)),
	 [UpdRepair] = concat(char(34), [incCodes].[UpdRepair], char(34)),
	 [SSTableName] = concat(char(34), [incCodes].[SSTableName], char(34)),
	 [SSKey] = concat(char(34), [incCodes].[SSKey], char(34)),
	 [MobileFlag] = concat(char(34), [incCodes].[MobileFlag], char(34)),
	 [CreateDate] = convert(varchar(50), [incCodes].[CreateDate], 21),
	 [Notify] = concat(char(34), [incCodes].[Notify], char(34)),
	 [InactiveFlag] = concat(char(34), [incCodes].[InactiveFlag], char(34)),
	 [Sequence] = concat(char(34), [incCodes].[Sequence], char(34)),
	 [InternalOnly] = concat(char(34), [incCodes].[InternalOnly], char(34))
from SinglePoint.dbo.incCodes