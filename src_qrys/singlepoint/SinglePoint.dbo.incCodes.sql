select
	 [incCodeID] = isNull(quotename([incCodeID], char(34)), '\N'),
	 [incCodeTypeID] = isNull(quotename([incCodeTypeID], char(34)), '\N'),
	 [ParentID] = isNull(quotename([ParentID], char(34)), '\N'),
	 [Code] = isNull(quotename([Code], char(34)), '\N'),
	 [CodeDescription] = isNull(quotename([CodeDescription], char(34)), '\N'),
	 [SeqNum] = isNull(quotename([SeqNum], char(34)), '\N'),
	 [UpdCallback] = isNull(quotename([UpdCallback], char(34)), '\N'),
	 [UpdRepair] = isNull(quotename([UpdRepair], char(34)), '\N'),
	 [SSTableName] = isNull(quotename([SSTableName], char(34)), '\N'),
	 [SSKey] = isNull(quotename([SSKey], char(34)), '\N'),
	 [MobileFlag] = isNull(quotename([MobileFlag], char(34)), '\N'),
	 [CreateDate] = isNull(convert(varchar(50), [CreateDate], 21), '\N'),
	 [Notify] = isNull(quotename([Notify], char(34)), '\N'),
	 [InactiveFlag] = isNull(quotename([InactiveFlag], char(34)), '\N'),
	 [Sequence] = isNull(quotename([Sequence], char(34)), '\N'),
	 [InternalOnly] = isNull(quotename([InternalOnly], char(34)), '\N')
from SinglePoint.dbo.incCodes