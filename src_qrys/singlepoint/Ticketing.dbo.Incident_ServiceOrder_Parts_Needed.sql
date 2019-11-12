select
	 [RequestID] = concat('"', [Incident_ServiceOrder_Parts_Needed].[RequestID], '"'),
	 [ServiceOrderID] = concat('"', [Incident_ServiceOrder_Parts_Needed].[ServiceOrderID], '"'),
	 [ItemID] = concat('"', [Incident_ServiceOrder_Parts_Needed].[ItemID], '"'),
	 [ItemNumber] = concat('"', [Incident_ServiceOrder_Parts_Needed].[ItemNumber], '"'),
	 [Description] = concat('"', [Incident_ServiceOrder_Parts_Needed].[Description], '"'),
	 [Quantity] = concat('"', [Incident_ServiceOrder_Parts_Needed].[Quantity], '"'),
	 [Notes] = concat('"', [Incident_ServiceOrder_Parts_Needed].[Notes], '"'),
	 [Status] = concat('"', [Incident_ServiceOrder_Parts_Needed].[Status], '"'),
	 [CreateByUserID] = concat('"', [Incident_ServiceOrder_Parts_Needed].[CreateByUserID], '"'),
	 [CreatedDate] = convert(varchar(50), [Incident_ServiceOrder_Parts_Needed].[CreatedDate], 21),
	 [UpdateByUserID] = concat('"', [Incident_ServiceOrder_Parts_Needed].[UpdateByUserID], '"'),
	 [UpdateDate] = convert(varchar(50), [Incident_ServiceOrder_Parts_Needed].[UpdateDate], 21),
	 [Quantity_Located] = concat('"', [Incident_ServiceOrder_Parts_Needed].[Quantity_Located], '"'),
	 [Quantity_Reserved] = concat('"', [Incident_ServiceOrder_Parts_Needed].[Quantity_Reserved], '"')
from Ticketing.dbo.Incident_ServiceOrder_Parts_Needed