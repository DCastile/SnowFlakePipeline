select
	 [CallHomeProviderID] = quotename([CallHomeProviders].[CallHomeProviderID], char(34)),
	 [CallHomeProviderName] = quotename([CallHomeProviders].[CallHomeProviderName], char(34)),
	 [ServiceDealerID] = quotename([CallHomeProviders].[ServiceDealerID], char(34)),
	 [CreateDate] = convert(varchar(50), [CallHomeProviders].[CreateDate], 21),
	 [CreateByID] = quotename([CallHomeProviders].[CreateByID], char(34))
from SinglePoint.dbo.CallHomeProviders