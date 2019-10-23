select
	 [DataPointID] = isNull(quotename([DataPointID], char(34)), '\N'),
	 [FKID] = isNull(quotename([FKID], char(34)), '\N'),
	 [ActivityID] = isNull(quotename([ActivityID], char(34)), '\N'),
	 [FieldID] = isNull(quotename([FieldID], char(34)), '\N'),
	 [Name] = isNull(quotename([Name], char(34)), '\N'),
	 [Value] = isNull(quotename([Value], char(34)), '\N'),
	 [ValueID] = isNull(quotename([ValueID], char(34)), '\N'),
	 [ValueDateTime] = isNull(convert(varchar(50), [ValueDateTime], 21), '\N'),
	 [ValueMoney] = isNull(quotename([ValueMoney], char(34)), '\N')
from SinglePoint.dbo.Activity_ExtendedData