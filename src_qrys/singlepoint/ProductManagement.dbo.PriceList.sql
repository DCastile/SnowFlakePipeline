select
	 [PriceListID] = concat(char(34), isNull(replace(cast([PriceList].[PriceListID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Name] = concat(char(34), isNull(replace(cast([PriceList].[Name] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Currency] = concat(char(34), isNull(replace(cast([PriceList].[Currency] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [EditorSecurityGroup] = concat(char(34), isNull(replace(cast([PriceList].[EditorSecurityGroup] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [CreatedBy] = concat(char(34), isNull(replace(cast([PriceList].[CreatedBy] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [CreatedDate] = isNull(convert(varchar(50), [PriceList].[CreatedDate], 21), '\N'),
	 [PriceListMultiplier] = concat(char(34), isNull(replace(cast([PriceList].[PriceListMultiplier] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Inactive] = concat(char(34), isNull(replace(cast([PriceList].[Inactive] as nvarchar(max)), char(34), char(0)), '\N'), char(34))
from ProductManagement.dbo.PriceList