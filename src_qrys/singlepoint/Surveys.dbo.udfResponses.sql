select
	 [udfResponseID] = isNull(cast([udfResponses].[udfResponseID] as varchar(36)), '\N'),
	 [udfID] = isNull(cast([udfResponses].[udfID] as varchar(36)), '\N'),
	 [ChangedByID] = isNull(cast([udfResponses].[ChangedByID] as varchar(36)), '\N'),
	 [LastChanged] = isNull(convert(varchar(50), [udfResponses].[LastChanged], 21), '\N'),
	 [fkid] = isNull(cast([udfResponses].[fkid] as varchar(36)), '\N'),
	 [CreateDate] = isNull(convert(varchar(50), [udfResponses].[CreateDate], 21), '\N')
from Surveys.dbo.udfResponses with(nolock)