select
	 [StatusHistoryGuid] = concat(char(34), isNull(replace(cast([tqoQuoteStatusHistory].[StatusHistoryGuid] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [QuoteGuid] = concat(char(34), isNull(replace(cast([tqoQuoteStatusHistory].[QuoteGuid] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [NewStatusID] = concat(char(34), isNull(replace(cast([tqoQuoteStatusHistory].[NewStatusID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [CreateByID] = concat(char(34), isNull(replace(cast([tqoQuoteStatusHistory].[CreateByID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [CreateDate] = isNull(convert(varchar(50), [tqoQuoteStatusHistory].[CreateDate], 21), '\N')
from SinglePoint.dbo.tqoQuoteStatusHistory with(nolock)