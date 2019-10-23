select
	 [SroLineID] = isNull(quotename([SroLineID], char(34)), '\N'),
	 [SroID] = isNull(quotename([SroID], char(34)), '\N'),
	 [SroLineKey] = isNull(quotename([SroLineKey], char(34)), '\N'),
	 [LineNumber] = isNull(quotename([LineNumber], char(34)), '\N'),
	 [Description] = isNull(quotename([Description], char(34)), '\N'),
	 [Notes] = isNull(quotename([Notes], char(34)), '\N'),
	 [StatusCodeID] = isNull(quotename([StatusCodeID], char(34)), '\N'),
	 [ImportFrom] = isNull(quotename([ImportFrom], char(34)), '\N'),
	 [ImportDate] = isNull(convert(varchar(50), [ImportDate], 21), '\N'),
	 [ImportBatch] = isNull(quotename([ImportBatch], char(34)), '\N'),
	 [AsyncStatus] = isNull(quotename([AsyncStatus], char(34)), '\N'),
	 [AsyncError] = isNull(quotename([AsyncError], char(34)), '\N'),
	 [ContractKey] = isNull(quotename([ContractKey], char(34)), '\N'),
	 [ContractLineKey] = isNull(quotename([ContractLineKey], char(34)), '\N'),
	 [CreateDate] = isNull(convert(varchar(50), [CreateDate], 21), '\N'),
	 [UpdatedUserName] = isNull(quotename([UpdatedUserName], char(34)), '\N')
from SinglePoint.dbo.SroLine