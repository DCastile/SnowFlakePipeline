select
	 [DataPointID] = concat('"', [Activity_ExtendedData].[DataPointID], '"'),
	 [FKID] = concat('"', [Activity_ExtendedData].[FKID], '"'),
	 [ActivityID] = concat('"', [Activity_ExtendedData].[ActivityID], '"'),
	 [FieldID] = concat('"', [Activity_ExtendedData].[FieldID], '"'),
	 [Name] = concat('"', [Activity_ExtendedData].[Name], '"'),
	 [Value] = concat('"', [Activity_ExtendedData].[Value], '"'),
	 [ValueID] = concat('"', [Activity_ExtendedData].[ValueID], '"'),
	 [ValueDateTime] = convert(varchar(50), [Activity_ExtendedData].[ValueDateTime], 21),
	 [ValueMoney] = concat('"', [Activity_ExtendedData].[ValueMoney], '"')
from SinglePoint.dbo.Activity_ExtendedData