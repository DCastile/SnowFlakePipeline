select
	 [PriceListID] = isNull(cast([PriceList].[PriceListID] as varchar(36)), '\N'),
	 [Name] = concat(char(34), isNull(replace(cast([PriceList].[Name] as nvarchar(255)), char(34), char(0)), '\N'), char(34)),
	 [Currency] = concat(char(34), isNull(replace(cast([PriceList].[Currency] as nvarchar(5)), char(34), char(0)), '\N'), char(34)),
	 [EditorSecurityGroup] = concat(char(34), isNull(replace(cast([PriceList].[EditorSecurityGroup] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [CreatedBy] = concat(char(34), isNull(replace(cast([PriceList].[CreatedBy] as nvarchar(255)), char(34), char(0)), '\N'), char(34)),
	 [CreatedDate] = isNull(convert(varchar(50), [PriceList].[CreatedDate], 21), '\N'),
	 [PriceListMultiplier] = isNull(cast([PriceList].[PriceListMultiplier] as varchar(36)), '\N'),
	 [Inactive] = isNull(cast([PriceList].[Inactive] as varchar(36)), '\N')
from ProductManagement.dbo.PriceList