select
	 [QuoteTypeID] = concat(char(34), isNull(cast([tqoQuoteTypes].[QuoteTypeID] as nvarchar(max)), '\N'), char(34)),
	 [QuoteType] = concat(char(34), isNull(cast([tqoQuoteTypes].[QuoteType] as nvarchar(max)), '\N'), char(34)),
	 [CreateDate] = isNull(convert(varchar(50), [tqoQuoteTypes].[CreateDate], 21), '\N'),
	 [allowLineEdits] = concat(char(34), isNull(cast([tqoQuoteTypes].[allowLineEdits] as nvarchar(max)), '\N'), char(34)),
	 [allowHeaderEdits] = concat(char(34), isNull(cast([tqoQuoteTypes].[allowHeaderEdits] as nvarchar(max)), '\N'), char(34)),
	 [showOnSearch] = concat(char(34), isNull(cast([tqoQuoteTypes].[showOnSearch] as nvarchar(max)), '\N'), char(34))
from SinglePoint.dbo.tqoQuoteTypes