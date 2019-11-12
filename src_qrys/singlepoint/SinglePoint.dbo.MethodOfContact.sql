select
	 [ID] = concat(char(34), isNull(cast([MethodOfContact].[ID] as nvarchar(max)), '\N'), char(34)),
	 [Address] = concat(char(34), isNull(cast([MethodOfContact].[Address] as nvarchar(max)), '\N'), char(34)),
	 [FKID] = concat(char(34), isNull(cast([MethodOfContact].[FKID] as nvarchar(max)), '\N'), char(34)),
	 [TechTypeID] = concat(char(34), isNull(cast([MethodOfContact].[TechTypeID] as nvarchar(max)), '\N'), char(34)),
	 [SubTypeID] = concat(char(34), isNull(cast([MethodOfContact].[SubTypeID] as nvarchar(max)), '\N'), char(34)),
	 [ServicerProvider] = concat(char(34), isNull(cast([MethodOfContact].[ServicerProvider] as nvarchar(max)), '\N'), char(34)),
	 [CreatedByID] = concat(char(34), isNull(cast([MethodOfContact].[CreatedByID] as nvarchar(max)), '\N'), char(34)),
	 [CreatedDate] = isNull(convert(varchar(50), [MethodOfContact].[CreatedDate], 21), '\N'),
	 [LastChangedByID] = concat(char(34), isNull(cast([MethodOfContact].[LastChangedByID] as nvarchar(max)), '\N'), char(34)),
	 [LastChangedDate] = isNull(convert(varchar(50), [MethodOfContact].[LastChangedDate], 21), '\N'),
	 [IsActive] = concat(char(34), isNull(cast([MethodOfContact].[IsActive] as nvarchar(max)), '\N'), char(34))
from SinglePoint.dbo.MethodOfContact