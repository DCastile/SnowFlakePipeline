select
	 [incCodeID] = quotename([incCodes].[incCodeID], char(34)),
	 [incCodeTypeID] = quotename([incCodes].[incCodeTypeID], char(34)),
	 [ParentID] = quotename([incCodes].[ParentID], char(34)),
	 [Code] = quotename([incCodes].[Code], char(34)),
	 [CodeDescription] = quotename([incCodes].[CodeDescription], char(34)),
	 [SeqNum] = quotename([incCodes].[SeqNum], char(34)),
	 [UpdCallback] = quotename([incCodes].[UpdCallback], char(34)),
	 [UpdRepair] = quotename([incCodes].[UpdRepair], char(34)),
	 [SSTableName] = quotename([incCodes].[SSTableName], char(34)),
	 [SSKey] = quotename([incCodes].[SSKey], char(34)),
	 [MobileFlag] = quotename([incCodes].[MobileFlag], char(34)),
	 [CreateDate] = convert(varchar(50), [incCodes].[CreateDate], 21),
	 [Notify] = quotename([incCodes].[Notify], char(34)),
	 [InactiveFlag] = quotename([incCodes].[InactiveFlag], char(34)),
	 [Sequence] = quotename([incCodes].[Sequence], char(34)),
	 [InternalOnly] = quotename([incCodes].[InternalOnly], char(34))
from SinglePoint.dbo.incCodes