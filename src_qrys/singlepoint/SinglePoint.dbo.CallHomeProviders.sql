select
	 [CallHomeProviderID] = isNull(cast([CallHomeProviders].[CallHomeProviderID] as varchar(36)), '\N'),
	 [CallHomeProviderName] = concat(char(34), isNull(replace(cast([CallHomeProviders].[CallHomeProviderName] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [ServiceDealerID] = isNull(cast([CallHomeProviders].[ServiceDealerID] as varchar(36)), '\N'),
	 [CreateDate] = isNull(convert(varchar(50), [CallHomeProviders].[CreateDate], 21), '\N'),
	 [CreateByID] = isNull(cast([CallHomeProviders].[CreateByID] as varchar(36)), '\N')
from SinglePoint.dbo.CallHomeProviders