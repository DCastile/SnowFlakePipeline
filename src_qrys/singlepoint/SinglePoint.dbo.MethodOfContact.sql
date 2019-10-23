select
	 [ID] = isNull(quotename([ID], char(34)), '\N'),
	 [Address] = isNull(quotename([Address], char(34)), '\N'),
	 [FKID] = isNull(quotename([FKID], char(34)), '\N'),
	 [TechTypeID] = isNull(quotename([TechTypeID], char(34)), '\N'),
	 [SubTypeID] = isNull(quotename([SubTypeID], char(34)), '\N'),
	 [ServicerProvider] = isNull(quotename([ServicerProvider], char(34)), '\N'),
	 [CreatedByID] = isNull(quotename([CreatedByID], char(34)), '\N'),
	 [CreatedDate] = isNull(convert(varchar(50), [CreatedDate], 21), '\N'),
	 [LastChangedByID] = isNull(quotename([LastChangedByID], char(34)), '\N'),
	 [LastChangedDate] = isNull(convert(varchar(50), [LastChangedDate], 21), '\N'),
	 [IsActive] = isNull(quotename([IsActive], char(34)), '\N')
from SinglePoint.dbo.MethodOfContact