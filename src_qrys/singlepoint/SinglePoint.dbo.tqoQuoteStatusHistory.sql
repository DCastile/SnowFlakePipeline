select
	 [StatusHistoryGuid] = concat(char(34), isNull(cast([tqoQuoteStatusHistory].[StatusHistoryGuid] as nvarchar(max)), '\N'), char(34)),
	 [QuoteGuid] = concat(char(34), isNull(cast([tqoQuoteStatusHistory].[QuoteGuid] as nvarchar(max)), '\N'), char(34)),
	 [NewStatusID] = concat(char(34), isNull(cast([tqoQuoteStatusHistory].[NewStatusID] as nvarchar(max)), '\N'), char(34)),
	 [CreateByID] = concat(char(34), isNull(cast([tqoQuoteStatusHistory].[CreateByID] as nvarchar(max)), '\N'), char(34)),
	 [CreateDate] = isNull(convert(varchar(50), [tqoQuoteStatusHistory].[CreateDate], 21), '\N')
from SinglePoint.dbo.tqoQuoteStatusHistory