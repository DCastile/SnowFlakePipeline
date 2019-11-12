select
	 [StatusHistoryGuid] = concat('"', [tqoQuoteStatusHistory].[StatusHistoryGuid], '"'),
	 [QuoteGuid] = concat('"', [tqoQuoteStatusHistory].[QuoteGuid], '"'),
	 [NewStatusID] = concat('"', [tqoQuoteStatusHistory].[NewStatusID], '"'),
	 [CreateByID] = concat('"', [tqoQuoteStatusHistory].[CreateByID], '"'),
	 [CreateDate] = convert(varchar(50), [tqoQuoteStatusHistory].[CreateDate], 21)
from SinglePoint.dbo.tqoQuoteStatusHistory