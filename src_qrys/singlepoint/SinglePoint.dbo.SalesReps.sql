select
	 [SalesRepID] = quotename([SalesReps].[SalesRepID], char(34)),
	 [UserID] = quotename([SalesReps].[UserID], char(34)),
	 [SMSSperKey] = quotename([SalesReps].[SMSSperKey], char(34)),
	 [WarehouseID] = quotename([SalesReps].[WarehouseID], char(34)),
	 [ParentID] = quotename([SalesReps].[ParentID], char(34)),
	 [CreateByID] = quotename([SalesReps].[CreateByID], char(34)),
	 [CreateDate] = convert(varchar(50), [SalesReps].[CreateDate], 21),
	 [SiteAuditEmailFlag] = quotename([SalesReps].[SiteAuditEmailFlag], char(34)),
	 [SMSSperID] = quotename([SalesReps].[SMSSperID], char(34)),
	 [EntFlag] = quotename([SalesReps].[EntFlag], char(34)),
	 [SAP_Salesperson_Key] = quotename([SalesReps].[SAP_Salesperson_Key], char(34)),
	 [ChangeByID] = quotename([SalesReps].[ChangeByID], char(34)),
	 [ChangeDate] = convert(varchar(50), [SalesReps].[ChangeDate], 21),
	 [Active] = quotename([SalesReps].[Active], char(34))
from SinglePoint.dbo.SalesReps