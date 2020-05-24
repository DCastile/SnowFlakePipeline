select
	 [ID] = isNull(cast([MethodOfContact].[ID] as varchar(36)), '\N'),
	 [Address] = concat(char(34), isNull(replace(cast([MethodOfContact].[Address] as nvarchar(256)), char(34), char(0)), '\N'), char(34)),
	 [FKID] = isNull(cast([MethodOfContact].[FKID] as varchar(36)), '\N'),
	 [TechTypeID] = isNull(cast([MethodOfContact].[TechTypeID] as varchar(36)), '\N'),
	 [SubTypeID] = isNull(cast([MethodOfContact].[SubTypeID] as varchar(36)), '\N'),
	 [ServicerProvider] = isNull(cast([MethodOfContact].[ServicerProvider] as varchar(36)), '\N'),
	 [CreatedByID] = isNull(cast([MethodOfContact].[CreatedByID] as varchar(36)), '\N'),
	 [CreatedDate] = isNull(convert(varchar(50), [MethodOfContact].[CreatedDate], 21), '\N'),
	 [LastChangedByID] = isNull(cast([MethodOfContact].[LastChangedByID] as varchar(36)), '\N'),
	 [LastChangedDate] = isNull(convert(varchar(50), [MethodOfContact].[LastChangedDate], 21), '\N'),
	 [IsActive] = isNull(cast([MethodOfContact].[IsActive] as varchar(36)), '\N')
from SinglePoint.dbo.MethodOfContact with(nolock)