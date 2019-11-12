select
	 [ID] = concat('"', [MethodOfContact].[ID], '"'),
	 [Address] = concat('"', [MethodOfContact].[Address], '"'),
	 [FKID] = concat('"', [MethodOfContact].[FKID], '"'),
	 [TechTypeID] = concat('"', [MethodOfContact].[TechTypeID], '"'),
	 [SubTypeID] = concat('"', [MethodOfContact].[SubTypeID], '"'),
	 [ServicerProvider] = concat('"', [MethodOfContact].[ServicerProvider], '"'),
	 [CreatedByID] = concat('"', [MethodOfContact].[CreatedByID], '"'),
	 [CreatedDate] = convert(varchar(50), [MethodOfContact].[CreatedDate], 21),
	 [LastChangedByID] = concat('"', [MethodOfContact].[LastChangedByID], '"'),
	 [LastChangedDate] = convert(varchar(50), [MethodOfContact].[LastChangedDate], 21),
	 [IsActive] = concat('"', [MethodOfContact].[IsActive], '"')
from SinglePoint.dbo.MethodOfContact