select
	 [RequestID] = concat(char(34), [Incident_ServiceOrder_Parts_Needed].[RequestID], char(34)),
	 [ServiceOrderID] = concat(char(34), [Incident_ServiceOrder_Parts_Needed].[ServiceOrderID], char(34)),
	 [ItemID] = concat(char(34), [Incident_ServiceOrder_Parts_Needed].[ItemID], char(34)),
	 [ItemNumber] = concat(char(34), [Incident_ServiceOrder_Parts_Needed].[ItemNumber], char(34)),
	 [Description] = concat(char(34), [Incident_ServiceOrder_Parts_Needed].[Description], char(34)),
	 [Quantity] = concat(char(34), [Incident_ServiceOrder_Parts_Needed].[Quantity], char(34)),
	 [Notes] = concat(char(34), [Incident_ServiceOrder_Parts_Needed].[Notes], char(34)),
	 [Status] = concat(char(34), [Incident_ServiceOrder_Parts_Needed].[Status], char(34)),
	 [CreateByUserID] = concat(char(34), [Incident_ServiceOrder_Parts_Needed].[CreateByUserID], char(34)),
	 [CreatedDate] = convert(varchar(50), [Incident_ServiceOrder_Parts_Needed].[CreatedDate], 21),
	 [UpdateByUserID] = concat(char(34), [Incident_ServiceOrder_Parts_Needed].[UpdateByUserID], char(34)),
	 [UpdateDate] = convert(varchar(50), [Incident_ServiceOrder_Parts_Needed].[UpdateDate], 21),
	 [Quantity_Located] = concat(char(34), [Incident_ServiceOrder_Parts_Needed].[Quantity_Located], char(34)),
	 [Quantity_Reserved] = concat(char(34), [Incident_ServiceOrder_Parts_Needed].[Quantity_Reserved], char(34))
from Ticketing.dbo.Incident_ServiceOrder_Parts_Needed