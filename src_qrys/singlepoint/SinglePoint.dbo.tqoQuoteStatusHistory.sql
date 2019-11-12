select
	 [StatusHistoryGuid] = concat(char(34), [tqoQuoteStatusHistory].[StatusHistoryGuid], char(34)),
	 [QuoteGuid] = concat(char(34), [tqoQuoteStatusHistory].[QuoteGuid], char(34)),
	 [NewStatusID] = concat(char(34), [tqoQuoteStatusHistory].[NewStatusID], char(34)),
	 [CreateByID] = concat(char(34), [tqoQuoteStatusHistory].[CreateByID], char(34)),
	 [CreateDate] = convert(varchar(50), [tqoQuoteStatusHistory].[CreateDate], 21)
from SinglePoint.dbo.tqoQuoteStatusHistory