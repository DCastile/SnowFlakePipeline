select
	 [SalesRepID] = concat('"', [SalesReps].[SalesRepID], '"'),
	 [UserID] = concat('"', [SalesReps].[UserID], '"'),
	 [SMSSperKey] = concat('"', [SalesReps].[SMSSperKey], '"'),
	 [WarehouseID] = concat('"', [SalesReps].[WarehouseID], '"'),
	 [ParentID] = concat('"', [SalesReps].[ParentID], '"'),
	 [CreateByID] = concat('"', [SalesReps].[CreateByID], '"'),
	 [CreateDate] = convert(varchar(50), [SalesReps].[CreateDate], 21),
	 [SiteAuditEmailFlag] = concat('"', [SalesReps].[SiteAuditEmailFlag], '"'),
	 [SMSSperID] = concat('"', [SalesReps].[SMSSperID], '"'),
	 [EntFlag] = concat('"', [SalesReps].[EntFlag], '"'),
	 [SAP_Salesperson_Key] = concat('"', [SalesReps].[SAP_Salesperson_Key], '"'),
	 [ChangeByID] = concat('"', [SalesReps].[ChangeByID], '"'),
	 [ChangeDate] = convert(varchar(50), [SalesReps].[ChangeDate], 21),
	 [Active] = concat('"', [SalesReps].[Active], '"')
from SinglePoint.dbo.SalesReps