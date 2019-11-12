select
	 [SalesRepID] = concat(char(34), isNull(cast([SalesReps].[SalesRepID] as nvarchar(max)), '\N'), char(34)),
	 [UserID] = concat(char(34), isNull(cast([SalesReps].[UserID] as nvarchar(max)), '\N'), char(34)),
	 [SMSSperKey] = concat(char(34), isNull(cast([SalesReps].[SMSSperKey] as nvarchar(max)), '\N'), char(34)),
	 [WarehouseID] = concat(char(34), isNull(cast([SalesReps].[WarehouseID] as nvarchar(max)), '\N'), char(34)),
	 [ParentID] = concat(char(34), isNull(cast([SalesReps].[ParentID] as nvarchar(max)), '\N'), char(34)),
	 [CreateByID] = concat(char(34), isNull(cast([SalesReps].[CreateByID] as nvarchar(max)), '\N'), char(34)),
	 [CreateDate] = isNull(convert(varchar(50), [SalesReps].[CreateDate], 21), '\N'),
	 [SiteAuditEmailFlag] = concat(char(34), isNull(cast([SalesReps].[SiteAuditEmailFlag] as nvarchar(max)), '\N'), char(34)),
	 [SMSSperID] = concat(char(34), isNull(cast([SalesReps].[SMSSperID] as nvarchar(max)), '\N'), char(34)),
	 [EntFlag] = concat(char(34), isNull(cast([SalesReps].[EntFlag] as nvarchar(max)), '\N'), char(34)),
	 [SAP_Salesperson_Key] = concat(char(34), isNull(cast([SalesReps].[SAP_Salesperson_Key] as nvarchar(max)), '\N'), char(34)),
	 [ChangeByID] = concat(char(34), isNull(cast([SalesReps].[ChangeByID] as nvarchar(max)), '\N'), char(34)),
	 [ChangeDate] = isNull(convert(varchar(50), [SalesReps].[ChangeDate], 21), '\N'),
	 [Active] = concat(char(34), isNull(cast([SalesReps].[Active] as nvarchar(max)), '\N'), char(34))
from SinglePoint.dbo.SalesReps