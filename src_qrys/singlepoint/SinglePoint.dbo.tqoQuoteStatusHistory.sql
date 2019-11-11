select
	 [StatusHistoryGuid] = quotename([tqoQuoteStatusHistory].[StatusHistoryGuid], char(34)),
	 [QuoteGuid] = quotename([tqoQuoteStatusHistory].[QuoteGuid], char(34)),
	 [NewStatusID] = quotename([tqoQuoteStatusHistory].[NewStatusID], char(34)),
	 [CreateByID] = quotename([tqoQuoteStatusHistory].[CreateByID], char(34)),
	 [CreateDate] = convert(varchar(50), [tqoQuoteStatusHistory].[CreateDate], 21)
from SinglePoint.dbo.tqoQuoteStatusHistory