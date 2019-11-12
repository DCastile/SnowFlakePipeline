select
	 [CurrencyID] = concat(char(34), isNull(cast([Currency_PriceList_Xref].[CurrencyID] as nvarchar(max)), '\N'), char(34)),
	 [PriceListID] = concat(char(34), isNull(cast([Currency_PriceList_Xref].[PriceListID] as nvarchar(max)), '\N'), char(34)),
	 [Currency] = concat(char(34), isNull(cast([Currency_PriceList_Xref].[Currency] as nvarchar(max)), '\N'), char(34)),
	 [Active] = concat(char(34), isNull(cast([Currency_PriceList_Xref].[Active] as nvarchar(max)), '\N'), char(34))
from SinglePoint.dbo.Currency_PriceList_Xref