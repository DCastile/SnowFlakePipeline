select
	 [CallHomeProviderID] = concat(char(34), [CallHomeProviders].[CallHomeProviderID], char(34)),
	 [CallHomeProviderName] = concat(char(34), [CallHomeProviders].[CallHomeProviderName], char(34)),
	 [ServiceDealerID] = concat(char(34), [CallHomeProviders].[ServiceDealerID], char(34)),
	 [CreateDate] = convert(varchar(50), [CallHomeProviders].[CreateDate], 21),
	 [CreateByID] = concat(char(34), [CallHomeProviders].[CreateByID], char(34))
from SinglePoint.dbo.CallHomeProviders