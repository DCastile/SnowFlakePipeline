select
	 [DataPointID] = concat(char(34), isNull(cast([Activity_ExtendedData].[DataPointID] as nvarchar(max)), '\N'), char(34)),
	 [FKID] = concat(char(34), isNull(cast([Activity_ExtendedData].[FKID] as nvarchar(max)), '\N'), char(34)),
	 [ActivityID] = concat(char(34), isNull(cast([Activity_ExtendedData].[ActivityID] as nvarchar(max)), '\N'), char(34)),
	 [FieldID] = concat(char(34), isNull(cast([Activity_ExtendedData].[FieldID] as nvarchar(max)), '\N'), char(34)),
	 [Name] = concat(char(34), isNull(cast([Activity_ExtendedData].[Name] as nvarchar(max)), '\N'), char(34)),
	 [Value] = concat(char(34), isNull(cast([Activity_ExtendedData].[Value] as nvarchar(max)), '\N'), char(34)),
	 [ValueID] = concat(char(34), isNull(cast([Activity_ExtendedData].[ValueID] as nvarchar(max)), '\N'), char(34)),
	 [ValueDateTime] = isNull(convert(varchar(50), [Activity_ExtendedData].[ValueDateTime], 21), '\N'),
	 [ValueMoney] = concat(char(34), isNull(cast([Activity_ExtendedData].[ValueMoney] as nvarchar(max)), '\N'), char(34))
from SinglePoint.dbo.Activity_ExtendedData