select
	 [CallHomeProviderID] = concat(char(34), isNull(replace(cast([CallHomeProviders].[CallHomeProviderID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [CallHomeProviderName] = concat(char(34), isNull(replace(cast([CallHomeProviders].[CallHomeProviderName] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ServiceDealerID] = concat(char(34), isNull(replace(cast([CallHomeProviders].[ServiceDealerID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [CreateDate] = isNull(convert(varchar(50), [CallHomeProviders].[CreateDate], 21), '\N'),
	 [CreateByID] = concat(char(34), isNull(replace(cast([CallHomeProviders].[CreateByID] as nvarchar(max)), char(34), char(0)), '\N'), char(34))
from SinglePoint.dbo.CallHomeProviders with(nolock)