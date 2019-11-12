select
	 [PriceListID] = concat('"', [PriceList].[PriceListID], '"'),
	 [Name] = concat('"', [PriceList].[Name], '"'),
	 [Currency] = concat('"', [PriceList].[Currency], '"'),
	 [EditorSecurityGroup] = concat('"', [PriceList].[EditorSecurityGroup], '"'),
	 [CreatedBy] = concat('"', [PriceList].[CreatedBy], '"'),
	 [CreatedDate] = convert(varchar(50), [PriceList].[CreatedDate], 21),
	 [PriceListMultiplier] = concat('"', [PriceList].[PriceListMultiplier], '"'),
	 [Inactive] = concat('"', [PriceList].[Inactive], '"')
from ProductManagement.dbo.PriceList