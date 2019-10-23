select
	 [ContractHeaderID] = isNull(quotename([ContractHeaderID], char(34)), '\N'),
	 [ContractID] = isNull(quotename([ContractID], char(34)), '\N'),
	 [CustomerName] = isNull(quotename([CustomerName], char(34)), '\N'),
	 [PartnerName] = isNull(quotename([PartnerName], char(34)), '\N'),
	 [DeleteDate] = isNull(convert(varchar(50), [DeleteDate], 21), '\N'),
	 [CreateDate] = isNull(convert(varchar(50), [CreateDate], 21), '\N')
from SinglePoint.dbo.ContractDeletes