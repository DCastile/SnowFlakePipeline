select
	 [QuoteTypeID] = isNull(cast([tqoQuoteTypes].[QuoteTypeID] as varchar(36)), '\N'),
	 [QuoteType] = concat(char(34), isNull(replace(cast([tqoQuoteTypes].[QuoteType] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [CreateDate] = isNull(convert(varchar(50), [tqoQuoteTypes].[CreateDate], 21), '\N'),
	 [allowLineEdits] = isNull(cast([tqoQuoteTypes].[allowLineEdits] as varchar(36)), '\N'),
	 [allowHeaderEdits] = isNull(cast([tqoQuoteTypes].[allowHeaderEdits] as varchar(36)), '\N'),
	 [showOnSearch] = isNull(cast([tqoQuoteTypes].[showOnSearch] as varchar(36)), '\N'),
	 [showOnNewQuoteDialog] = isNull(cast([tqoQuoteTypes].[showOnNewQuoteDialog] as varchar(36)), '\N')
from SinglePoint.dbo.tqoQuoteTypes