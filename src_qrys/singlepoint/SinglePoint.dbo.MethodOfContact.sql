select
	 [ID] = quotename([MethodOfContact].[ID], char(34)),
	 [Address] = quotename([MethodOfContact].[Address], char(34)),
	 [FKID] = quotename([MethodOfContact].[FKID], char(34)),
	 [TechTypeID] = quotename([MethodOfContact].[TechTypeID], char(34)),
	 [SubTypeID] = quotename([MethodOfContact].[SubTypeID], char(34)),
	 [ServicerProvider] = quotename([MethodOfContact].[ServicerProvider], char(34)),
	 [CreatedByID] = quotename([MethodOfContact].[CreatedByID], char(34)),
	 [CreatedDate] = convert(varchar(50), [MethodOfContact].[CreatedDate], 21),
	 [LastChangedByID] = quotename([MethodOfContact].[LastChangedByID], char(34)),
	 [LastChangedDate] = convert(varchar(50), [MethodOfContact].[LastChangedDate], 21),
	 [IsActive] = quotename([MethodOfContact].[IsActive], char(34))
from SinglePoint.dbo.MethodOfContact