select
	 [DataPointID] = concat(char(34), [Activity_ExtendedData].[DataPointID], char(34)),
	 [FKID] = concat(char(34), [Activity_ExtendedData].[FKID], char(34)),
	 [ActivityID] = concat(char(34), [Activity_ExtendedData].[ActivityID], char(34)),
	 [FieldID] = concat(char(34), [Activity_ExtendedData].[FieldID], char(34)),
	 [Name] = concat(char(34), [Activity_ExtendedData].[Name], char(34)),
	 [Value] = concat(char(34), [Activity_ExtendedData].[Value], char(34)),
	 [ValueID] = concat(char(34), [Activity_ExtendedData].[ValueID], char(34)),
	 [ValueDateTime] = convert(varchar(50), [Activity_ExtendedData].[ValueDateTime], 21),
	 [ValueMoney] = concat(char(34), [Activity_ExtendedData].[ValueMoney], char(34))
from SinglePoint.dbo.Activity_ExtendedData