select
	 [DataPointID] = quotename([Activity_ExtendedData].[DataPointID], char(34)),
	 [FKID] = quotename([Activity_ExtendedData].[FKID], char(34)),
	 [ActivityID] = quotename([Activity_ExtendedData].[ActivityID], char(34)),
	 [FieldID] = quotename([Activity_ExtendedData].[FieldID], char(34)),
	 [Name] = quotename([Activity_ExtendedData].[Name], char(34)),
	 [Value] = quotename([Activity_ExtendedData].[Value], char(34)),
	 [ValueID] = quotename([Activity_ExtendedData].[ValueID], char(34)),
	 [ValueDateTime] = convert(varchar(50), [Activity_ExtendedData].[ValueDateTime], 21),
	 [ValueMoney] = quotename([Activity_ExtendedData].[ValueMoney], char(34))
from SinglePoint.dbo.Activity_ExtendedData