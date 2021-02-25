select
	 [RateID] = isNull(cast([WorkOrder_TM_Rates].[RateID] as varchar(36)), '\N'),
	 [CustomerID] = isNull(cast([WorkOrder_TM_Rates].[CustomerID] as varchar(36)), '\N'),
	 [PriceListID] = isNull(cast([WorkOrder_TM_Rates].[PriceListID] as varchar(36)), '\N'),
	 [RateTypeID] = isNull(cast([WorkOrder_TM_Rates].[RateTypeID] as varchar(36)), '\N'),
	 [Rate] = isNull(cast([WorkOrder_TM_Rates].[Rate] as varchar(36)), '\N'),
	 [Currency] = concat(char(34), isNull(replace(cast([WorkOrder_TM_Rates].[Currency] as nvarchar(3)), char(34), char(0)), '\N'), char(34))
from Ticketing.dbo.WorkOrder_TM_Rates with(nolock)