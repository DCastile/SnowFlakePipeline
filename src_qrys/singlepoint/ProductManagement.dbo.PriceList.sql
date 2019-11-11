select
	 [PriceListID] = quotename([PriceList].[PriceListID], char(34)),
	 [Name] = quotename([PriceList].[Name], char(34)),
	 [Currency] = quotename([PriceList].[Currency], char(34)),
	 [EditorSecurityGroup] = quotename([PriceList].[EditorSecurityGroup], char(34)),
	 [CreatedBy] = quotename([PriceList].[CreatedBy], char(34)),
	 [CreatedDate] = convert(varchar(50), [PriceList].[CreatedDate], 21),
	 [PriceListMultiplier] = quotename([PriceList].[PriceListMultiplier], char(34)),
	 [Inactive] = quotename([PriceList].[Inactive], char(34))
from ProductManagement.dbo.PriceList