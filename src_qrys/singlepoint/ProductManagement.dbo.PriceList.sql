select
	 [PriceListID] = concat(char(34), isNull(cast([PriceList].[PriceListID] as nvarchar(max)), '\N'), char(34)),
	 [Name] = concat(char(34), isNull(cast([PriceList].[Name] as nvarchar(max)), '\N'), char(34)),
	 [Currency] = concat(char(34), isNull(cast([PriceList].[Currency] as nvarchar(max)), '\N'), char(34)),
	 [EditorSecurityGroup] = concat(char(34), isNull(cast([PriceList].[EditorSecurityGroup] as nvarchar(max)), '\N'), char(34)),
	 [CreatedBy] = concat(char(34), isNull(cast([PriceList].[CreatedBy] as nvarchar(max)), '\N'), char(34)),
	 [CreatedDate] = isNull(convert(varchar(50), [PriceList].[CreatedDate], 21), '\N'),
	 [PriceListMultiplier] = concat(char(34), isNull(cast([PriceList].[PriceListMultiplier] as nvarchar(max)), '\N'), char(34)),
	 [Inactive] = concat(char(34), isNull(cast([PriceList].[Inactive] as nvarchar(max)), '\N'), char(34))
from ProductManagement.dbo.PriceList