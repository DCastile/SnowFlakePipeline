select
	 [QuoteTypeID] = concat('"', [tqoQuoteTypes].[QuoteTypeID], '"'),
	 [QuoteType] = concat('"', [tqoQuoteTypes].[QuoteType], '"'),
	 [CreateDate] = convert(varchar(50), [tqoQuoteTypes].[CreateDate], 21),
	 [allowLineEdits] = concat('"', [tqoQuoteTypes].[allowLineEdits], '"'),
	 [allowHeaderEdits] = concat('"', [tqoQuoteTypes].[allowHeaderEdits], '"'),
	 [showOnSearch] = concat('"', [tqoQuoteTypes].[showOnSearch], '"')
from SinglePoint.dbo.tqoQuoteTypes