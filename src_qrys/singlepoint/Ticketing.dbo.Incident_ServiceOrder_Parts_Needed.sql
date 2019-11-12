select
	 [RequestID] = concat(char(34), isNull(cast([Incident_ServiceOrder_Parts_Needed].[RequestID] as nvarchar(max)), '\N'), char(34)),
	 [ServiceOrderID] = concat(char(34), isNull(cast([Incident_ServiceOrder_Parts_Needed].[ServiceOrderID] as nvarchar(max)), '\N'), char(34)),
	 [ItemID] = concat(char(34), isNull(cast([Incident_ServiceOrder_Parts_Needed].[ItemID] as nvarchar(max)), '\N'), char(34)),
	 [ItemNumber] = concat(char(34), isNull(cast([Incident_ServiceOrder_Parts_Needed].[ItemNumber] as nvarchar(max)), '\N'), char(34)),
	 [Description] = concat(char(34), isNull(cast([Incident_ServiceOrder_Parts_Needed].[Description] as nvarchar(max)), '\N'), char(34)),
	 [Quantity] = concat(char(34), isNull(cast([Incident_ServiceOrder_Parts_Needed].[Quantity] as nvarchar(max)), '\N'), char(34)),
	 [Notes] = concat(char(34), isNull(cast([Incident_ServiceOrder_Parts_Needed].[Notes] as nvarchar(max)), '\N'), char(34)),
	 [Status] = concat(char(34), isNull(cast([Incident_ServiceOrder_Parts_Needed].[Status] as nvarchar(max)), '\N'), char(34)),
	 [CreateByUserID] = concat(char(34), isNull(cast([Incident_ServiceOrder_Parts_Needed].[CreateByUserID] as nvarchar(max)), '\N'), char(34)),
	 [CreatedDate] = isNull(convert(varchar(50), [Incident_ServiceOrder_Parts_Needed].[CreatedDate], 21), '\N'),
	 [UpdateByUserID] = concat(char(34), isNull(cast([Incident_ServiceOrder_Parts_Needed].[UpdateByUserID] as nvarchar(max)), '\N'), char(34)),
	 [UpdateDate] = isNull(convert(varchar(50), [Incident_ServiceOrder_Parts_Needed].[UpdateDate], 21), '\N'),
	 [Quantity_Located] = concat(char(34), isNull(cast([Incident_ServiceOrder_Parts_Needed].[Quantity_Located] as nvarchar(max)), '\N'), char(34)),
	 [Quantity_Reserved] = concat(char(34), isNull(cast([Incident_ServiceOrder_Parts_Needed].[Quantity_Reserved] as nvarchar(max)), '\N'), char(34))
from Ticketing.dbo.Incident_ServiceOrder_Parts_Needed