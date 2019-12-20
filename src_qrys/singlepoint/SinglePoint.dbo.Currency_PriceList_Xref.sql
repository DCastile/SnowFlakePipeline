select
	 [CurrencyID] = concat(char(34), isNull(replace(cast([Currency_PriceList_Xref].[CurrencyID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [PriceListID] = concat(char(34), isNull(replace(cast([Currency_PriceList_Xref].[PriceListID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Currency] = concat(char(34), isNull(replace(cast([Currency_PriceList_Xref].[Currency] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Active] = concat(char(34), isNull(replace(cast([Currency_PriceList_Xref].[Active] as nvarchar(max)), char(34), char(0)), '\N'), char(34))
from SinglePoint.dbo.Currency_PriceList_Xref