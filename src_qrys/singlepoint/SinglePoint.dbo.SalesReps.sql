select
	 [SalesRepID] = concat(char(34), [SalesReps].[SalesRepID], char(34)),
	 [UserID] = concat(char(34), [SalesReps].[UserID], char(34)),
	 [SMSSperKey] = concat(char(34), [SalesReps].[SMSSperKey], char(34)),
	 [WarehouseID] = concat(char(34), [SalesReps].[WarehouseID], char(34)),
	 [ParentID] = concat(char(34), [SalesReps].[ParentID], char(34)),
	 [CreateByID] = concat(char(34), [SalesReps].[CreateByID], char(34)),
	 [CreateDate] = convert(varchar(50), [SalesReps].[CreateDate], 21),
	 [SiteAuditEmailFlag] = concat(char(34), [SalesReps].[SiteAuditEmailFlag], char(34)),
	 [SMSSperID] = concat(char(34), [SalesReps].[SMSSperID], char(34)),
	 [EntFlag] = concat(char(34), [SalesReps].[EntFlag], char(34)),
	 [SAP_Salesperson_Key] = concat(char(34), [SalesReps].[SAP_Salesperson_Key], char(34)),
	 [ChangeByID] = concat(char(34), [SalesReps].[ChangeByID], char(34)),
	 [ChangeDate] = convert(varchar(50), [SalesReps].[ChangeDate], 21),
	 [Active] = concat(char(34), [SalesReps].[Active], char(34))
from SinglePoint.dbo.SalesReps