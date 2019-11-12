select
	 [CurrencyID] = concat(char(34), [Currency_PriceList_Xref].[CurrencyID], char(34)),
	 [PriceListID] = concat(char(34), [Currency_PriceList_Xref].[PriceListID], char(34)),
	 [Currency] = concat(char(34), [Currency_PriceList_Xref].[Currency], char(34)),
	 [Active] = concat(char(34), [Currency_PriceList_Xref].[Active], char(34))
from SinglePoint.dbo.Currency_PriceList_Xref