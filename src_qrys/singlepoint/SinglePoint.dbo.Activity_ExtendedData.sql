select
	 [DataPointID] = isNull(cast([Activity_ExtendedData].[DataPointID] as varchar(36)), '\N'),
	 [FKID] = isNull(cast([Activity_ExtendedData].[FKID] as varchar(36)), '\N'),
	 [ActivityID] = isNull(cast([Activity_ExtendedData].[ActivityID] as varchar(36)), '\N'),
	 [FieldID] = isNull(cast([Activity_ExtendedData].[FieldID] as varchar(36)), '\N'),
	 [Name] = concat(char(34), isNull(replace(cast([Activity_ExtendedData].[Name] as nvarchar(255)), char(34), char(0)), '\N'), char(34)),
	 [Value] = concat(char(34), isNull(replace(cast([Activity_ExtendedData].[Value] as nvarchar(4000)), char(34), char(0)), '\N'), char(34)),
	 [ValueID] = isNull(cast([Activity_ExtendedData].[ValueID] as varchar(36)), '\N'),
	 [ValueDateTime] = isNull(convert(varchar(50), [Activity_ExtendedData].[ValueDateTime], 21), '\N'),
	 [ValueMoney] = isNull(cast([Activity_ExtendedData].[ValueMoney] as varchar(36)), '\N')
from SinglePoint.dbo.Activity_ExtendedData