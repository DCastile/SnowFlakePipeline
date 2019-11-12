select
	 [CurrencyID] = concat('"', [Currency_PriceList_Xref].[CurrencyID], '"'),
	 [PriceListID] = concat('"', [Currency_PriceList_Xref].[PriceListID], '"'),
	 [Currency] = concat('"', [Currency_PriceList_Xref].[Currency], '"'),
	 [Active] = concat('"', [Currency_PriceList_Xref].[Active], '"')
from SinglePoint.dbo.Currency_PriceList_Xref