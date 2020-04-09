select
	 [StatusHistoryGuid] = isNull(cast([tqoQuoteStatusHistory].[StatusHistoryGuid] as varchar(36)), '\N'),
	 [QuoteGuid] = isNull(cast([tqoQuoteStatusHistory].[QuoteGuid] as varchar(36)), '\N'),
	 [NewStatusID] = isNull(cast([tqoQuoteStatusHistory].[NewStatusID] as varchar(36)), '\N'),
	 [CreateByID] = isNull(cast([tqoQuoteStatusHistory].[CreateByID] as varchar(36)), '\N'),
	 [CreateDate] = isNull(convert(varchar(50), [tqoQuoteStatusHistory].[CreateDate], 21), '\N')
from SinglePoint.dbo.tqoQuoteStatusHistory