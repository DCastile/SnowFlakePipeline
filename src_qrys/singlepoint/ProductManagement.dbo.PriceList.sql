select
	 [PriceListID] = concat(char(34), [PriceList].[PriceListID], char(34)),
	 [Name] = concat(char(34), [PriceList].[Name], char(34)),
	 [Currency] = concat(char(34), [PriceList].[Currency], char(34)),
	 [EditorSecurityGroup] = concat(char(34), [PriceList].[EditorSecurityGroup], char(34)),
	 [CreatedBy] = concat(char(34), [PriceList].[CreatedBy], char(34)),
	 [CreatedDate] = convert(varchar(50), [PriceList].[CreatedDate], 21),
	 [PriceListMultiplier] = concat(char(34), [PriceList].[PriceListMultiplier], char(34)),
	 [Inactive] = concat(char(34), [PriceList].[Inactive], char(34))
from ProductManagement.dbo.PriceList