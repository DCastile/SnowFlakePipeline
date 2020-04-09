select
	 [CurrencyID] = isNull(cast([Currency_PriceList_Xref].[CurrencyID] as varchar(36)), '\N'),
	 [PriceListID] = isNull(cast([Currency_PriceList_Xref].[PriceListID] as varchar(36)), '\N'),
	 [Currency] = concat(char(34), isNull(replace(cast([Currency_PriceList_Xref].[Currency] as nvarchar(100)), char(34), char(0)), '\N'), char(34)),
	 [Active] = isNull(cast([Currency_PriceList_Xref].[Active] as varchar(36)), '\N')
from SinglePoint.dbo.Currency_PriceList_Xref