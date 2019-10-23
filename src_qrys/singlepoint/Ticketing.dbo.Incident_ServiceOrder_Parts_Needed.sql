select
	 [ContractHeaderID] = isNull(quotename([ContractHeaderID], char(34)), '\N'),
	 [TotalContractValue] = isNull(quotename([TotalContractValue], char(34)), '\N'),
	 [AvailableAmount] = isNull(quotename([AvailableAmount], char(34)), '\N'),
	 [TotalContractConsumed] = isNull(quotename([TotalContractConsumed], char(34)), '\N'),
	 [Currency] = isNull(quotename([Currency], char(34)), '\N'),
	 [RHPriceListID] = isNull(quotename([RHPriceListID], char(34)), '\N'),
	 [CreateByID] = isNull(quotename([CreateByID], char(34)), '\N'),
	 [CreateDate] = isNull(convert(varchar(50), [CreateDate], 21), '\N'),
	 [ChangeByID] = isNull(quotename([ChangeByID], char(34)), '\N'),
	 [ChangeDate] = isNull(convert(varchar(50), [ChangeDate], 21), '\N'),
	 [BillStatus] = isNull(quotename([BillStatus], char(34)), '\N')
from SinglePoint.dbo.ContractHeaders_RemoteHands