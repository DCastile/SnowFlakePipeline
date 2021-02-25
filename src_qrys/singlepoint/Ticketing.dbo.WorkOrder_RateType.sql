select
	 [RateTypeID] = isNull(cast([WorkOrder_RateType].[RateTypeID] as varchar(36)), '\N'),
	 [Name] = concat(char(34), isNull(replace(cast([WorkOrder_RateType].[Name] as nvarchar(100)), char(34), char(0)), '\N'), char(34)),
	 [Description] = concat(char(34), isNull(replace(cast([WorkOrder_RateType].[Description] as nvarchar(500)), char(34), char(0)), '\N'), char(34)),
	 [Sequence] = isNull(cast([WorkOrder_RateType].[Sequence] as varchar(36)), '\N'),
	 [Active] = isNull(cast([WorkOrder_RateType].[Active] as varchar(36)), '\N')
from Ticketing.dbo.WorkOrder_RateType with(nolock)