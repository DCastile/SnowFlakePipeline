select
	 [SalesRepID] = isNull(cast([SalesReps].[SalesRepID] as varchar(36)), '\N'),
	 [UserID] = isNull(cast([SalesReps].[UserID] as varchar(36)), '\N'),
	 [SMSSperKey] = isNull(cast([SalesReps].[SMSSperKey] as varchar(36)), '\N'),
	 [WarehouseID] = isNull(cast([SalesReps].[WarehouseID] as varchar(36)), '\N'),
	 [ParentID] = isNull(cast([SalesReps].[ParentID] as varchar(36)), '\N'),
	 [CreateByID] = isNull(cast([SalesReps].[CreateByID] as varchar(36)), '\N'),
	 [CreateDate] = isNull(convert(varchar(50), [SalesReps].[CreateDate], 21), '\N'),
	 [SiteAuditEmailFlag] = isNull(cast([SalesReps].[SiteAuditEmailFlag] as varchar(36)), '\N'),
	 [SMSSperID] = concat(char(34), isNull(replace(cast([SalesReps].[SMSSperID] as nvarchar(12)), char(34), char(0)), '\N'), char(34)),
	 [EntFlag] = isNull(cast([SalesReps].[EntFlag] as varchar(36)), '\N'),
	 [SAP_Salesperson_Key] = concat(char(34), isNull(replace(cast([SalesReps].[SAP_Salesperson_Key] as nvarchar(18)), char(34), char(0)), '\N'), char(34)),
	 [ChangeByID] = isNull(cast([SalesReps].[ChangeByID] as varchar(36)), '\N'),
	 [ChangeDate] = isNull(convert(varchar(50), [SalesReps].[ChangeDate], 21), '\N'),
	 [Active] = isNull(cast([SalesReps].[Active] as varchar(36)), '\N')
from SinglePoint.dbo.SalesReps with(nolock)