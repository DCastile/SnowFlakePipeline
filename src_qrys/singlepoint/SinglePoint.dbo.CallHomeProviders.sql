select
	 [CallHomeProviderID] = concat('"', [CallHomeProviders].[CallHomeProviderID], '"'),
	 [CallHomeProviderName] = concat('"', [CallHomeProviders].[CallHomeProviderName], '"'),
	 [ServiceDealerID] = concat('"', [CallHomeProviders].[ServiceDealerID], '"'),
	 [CreateDate] = convert(varchar(50), [CallHomeProviders].[CreateDate], 21),
	 [CreateByID] = concat('"', [CallHomeProviders].[CreateByID], '"')
from SinglePoint.dbo.CallHomeProviders