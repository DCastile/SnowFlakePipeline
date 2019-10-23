select
	 [CommissionGuid] = isNull(quotename([CommissionGuid], char(34)), '\N'),
	 [QuoteGuid] = isNull(quotename([QuoteGuid], char(34)), '\N'),
	 [SalesRepID] = isNull(quotename([SalesRepID], char(34)), '\N'),
	 [CompanyGuid] = isNull(quotename([CompanyGuid], char(34)), '\N'),
	 [PctSplit] = isNull(quotename([PctSplit], char(34)), '\N'),
	 [Comment] = isNull(quotename([Comment], char(34)), '\N'),
	 [CreateDate] = isNull(convert(varchar(50), [CreateDate], 21), '\N'),
	 [CreateByID] = isNull(quotename([CreateByID], char(34)), '\N'),
	 [ChangedByID] = isNull(quotename([ChangedByID], char(34)), '\N'),
	 [LastChanged] = isNull(convert(varchar(50), [LastChanged], 21), '\N')
from SinglePoint.dbo.tqoCommissions