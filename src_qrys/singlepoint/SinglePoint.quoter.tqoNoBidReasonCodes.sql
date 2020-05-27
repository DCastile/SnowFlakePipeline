select
	 [reasonCodeID] = isNull(cast([tqoNoBidReasonCodes].[reasonCodeID] as varchar(36)), '\N'),
	 [ReasonCode] = concat(char(34), isNull(replace(cast([tqoNoBidReasonCodes].[ReasonCode] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [ReasonDescription] = concat(char(34), isNull(replace(cast([tqoNoBidReasonCodes].[ReasonDescription] as nvarchar(255)), char(34), char(0)), '\N'), char(34)),
	 [Recommendation] = concat(char(34), isNull(replace(cast([tqoNoBidReasonCodes].[Recommendation] as nvarchar(255)), char(34), char(0)), '\N'), char(34)),
	 [seq] = isNull(cast([tqoNoBidReasonCodes].[seq] as varchar(36)), '\N')
from SinglePoint.quoter.tqoNoBidReasonCodes with(nolock)