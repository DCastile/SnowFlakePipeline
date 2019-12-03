select
	 [QuoteTypeID] = concat(char(34), isNull(replace(cast([tqoQuoteTypes].[QuoteTypeID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [QuoteType] = concat(char(34), isNull(replace(cast([tqoQuoteTypes].[QuoteType] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [CreateDate] = isNull(convert(varchar(50), [tqoQuoteTypes].[CreateDate], 21), '\N'),
	 [allowLineEdits] = concat(char(34), isNull(replace(cast([tqoQuoteTypes].[allowLineEdits] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [allowHeaderEdits] = concat(char(34), isNull(replace(cast([tqoQuoteTypes].[allowHeaderEdits] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [showOnSearch] = concat(char(34), isNull(replace(cast([tqoQuoteTypes].[showOnSearch] as nvarchar(max)), char(34), char(0)), '\N'), char(34))
from SinglePoint.dbo.tqoQuoteTypes with(nolock)