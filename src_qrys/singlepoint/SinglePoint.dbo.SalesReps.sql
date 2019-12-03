select
	 [SalesRepID] = concat(char(34), isNull(replace(cast([SalesReps].[SalesRepID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [UserID] = concat(char(34), isNull(replace(cast([SalesReps].[UserID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SMSSperKey] = concat(char(34), isNull(replace(cast([SalesReps].[SMSSperKey] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [WarehouseID] = concat(char(34), isNull(replace(cast([SalesReps].[WarehouseID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ParentID] = concat(char(34), isNull(replace(cast([SalesReps].[ParentID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [CreateByID] = concat(char(34), isNull(replace(cast([SalesReps].[CreateByID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [CreateDate] = isNull(convert(varchar(50), [SalesReps].[CreateDate], 21), '\N'),
	 [SiteAuditEmailFlag] = concat(char(34), isNull(replace(cast([SalesReps].[SiteAuditEmailFlag] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SMSSperID] = concat(char(34), isNull(replace(cast([SalesReps].[SMSSperID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [EntFlag] = concat(char(34), isNull(replace(cast([SalesReps].[EntFlag] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SAP_Salesperson_Key] = concat(char(34), isNull(replace(cast([SalesReps].[SAP_Salesperson_Key] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ChangeByID] = concat(char(34), isNull(replace(cast([SalesReps].[ChangeByID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ChangeDate] = isNull(convert(varchar(50), [SalesReps].[ChangeDate], 21), '\N'),
	 [Active] = concat(char(34), isNull(replace(cast([SalesReps].[Active] as nvarchar(max)), char(34), char(0)), '\N'), char(34))
from SinglePoint.dbo.SalesReps with(nolock)