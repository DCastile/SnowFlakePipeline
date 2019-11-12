select
	 [CallHomeProviderID] = concat(char(34), isNull(cast([CallHomeProviders].[CallHomeProviderID] as nvarchar(max)), '\N'), char(34)),
	 [CallHomeProviderName] = concat(char(34), isNull(cast([CallHomeProviders].[CallHomeProviderName] as nvarchar(max)), '\N'), char(34)),
	 [ServiceDealerID] = concat(char(34), isNull(cast([CallHomeProviders].[ServiceDealerID] as nvarchar(max)), '\N'), char(34)),
	 [CreateDate] = isNull(convert(varchar(50), [CallHomeProviders].[CreateDate], 21), '\N'),
	 [CreateByID] = concat(char(34), isNull(cast([CallHomeProviders].[CreateByID] as nvarchar(max)), '\N'), char(34))
from SinglePoint.dbo.CallHomeProviders