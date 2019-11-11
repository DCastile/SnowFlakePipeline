select
	 [CurrencyID] = quotename([Currency_PriceList_Xref].[CurrencyID], char(34)),
	 [PriceListID] = quotename([Currency_PriceList_Xref].[PriceListID], char(34)),
	 [Currency] = quotename([Currency_PriceList_Xref].[Currency], char(34)),
	 [Active] = quotename([Currency_PriceList_Xref].[Active], char(34))
from SinglePoint.dbo.Currency_PriceList_Xref