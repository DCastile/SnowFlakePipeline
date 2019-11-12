select
	 [ID] = concat(char(34), [MethodOfContact].[ID], char(34)),
	 [Address] = concat(char(34), [MethodOfContact].[Address], char(34)),
	 [FKID] = concat(char(34), [MethodOfContact].[FKID], char(34)),
	 [TechTypeID] = concat(char(34), [MethodOfContact].[TechTypeID], char(34)),
	 [SubTypeID] = concat(char(34), [MethodOfContact].[SubTypeID], char(34)),
	 [ServicerProvider] = concat(char(34), [MethodOfContact].[ServicerProvider], char(34)),
	 [CreatedByID] = concat(char(34), [MethodOfContact].[CreatedByID], char(34)),
	 [CreatedDate] = convert(varchar(50), [MethodOfContact].[CreatedDate], 21),
	 [LastChangedByID] = concat(char(34), [MethodOfContact].[LastChangedByID], char(34)),
	 [LastChangedDate] = convert(varchar(50), [MethodOfContact].[LastChangedDate], 21),
	 [IsActive] = concat(char(34), [MethodOfContact].[IsActive], char(34))
from SinglePoint.dbo.MethodOfContact