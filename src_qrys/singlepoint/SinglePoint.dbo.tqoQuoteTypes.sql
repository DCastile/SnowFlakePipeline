select
	 [QuoteTypeID] = concat(char(34), [tqoQuoteTypes].[QuoteTypeID], char(34)),
	 [QuoteType] = concat(char(34), [tqoQuoteTypes].[QuoteType], char(34)),
	 [CreateDate] = convert(varchar(50), [tqoQuoteTypes].[CreateDate], 21),
	 [allowLineEdits] = concat(char(34), [tqoQuoteTypes].[allowLineEdits], char(34)),
	 [allowHeaderEdits] = concat(char(34), [tqoQuoteTypes].[allowHeaderEdits], char(34)),
	 [showOnSearch] = concat(char(34), [tqoQuoteTypes].[showOnSearch], char(34))
from SinglePoint.dbo.tqoQuoteTypes