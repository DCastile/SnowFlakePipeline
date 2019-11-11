select
	 [QuoteTypeID] = quotename([tqoQuoteTypes].[QuoteTypeID], char(34)),
	 [QuoteType] = quotename([tqoQuoteTypes].[QuoteType], char(34)),
	 [CreateDate] = convert(varchar(50), [tqoQuoteTypes].[CreateDate], 21),
	 [allowLineEdits] = quotename([tqoQuoteTypes].[allowLineEdits], char(34)),
	 [allowHeaderEdits] = quotename([tqoQuoteTypes].[allowHeaderEdits], char(34)),
	 [showOnSearch] = quotename([tqoQuoteTypes].[showOnSearch], char(34))
from SinglePoint.dbo.tqoQuoteTypes