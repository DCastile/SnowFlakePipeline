select
	 [RequestID] = isNull(cast([Incident_ServiceOrder_Parts_Needed].[RequestID] as varchar(36)), '\N'),
	 [ServiceOrderID] = isNull(cast([Incident_ServiceOrder_Parts_Needed].[ServiceOrderID] as varchar(36)), '\N'),
	 [ItemID] = isNull(cast([Incident_ServiceOrder_Parts_Needed].[ItemID] as varchar(36)), '\N'),
	 [ItemNumber] = concat(char(34), isNull(replace(cast([Incident_ServiceOrder_Parts_Needed].[ItemNumber] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [Description] = concat(char(34), isNull(replace(cast([Incident_ServiceOrder_Parts_Needed].[Description] as nvarchar(255)), char(34), char(0)), '\N'), char(34)),
	 [Quantity] = isNull(cast([Incident_ServiceOrder_Parts_Needed].[Quantity] as varchar(36)), '\N'),
	 [Notes] = concat(char(34), isNull(replace(cast([Incident_ServiceOrder_Parts_Needed].[Notes] as nvarchar(4000)), char(34), char(0)), '\N'), char(34)),
	 [Status] = concat(char(34), isNull(replace(cast([Incident_ServiceOrder_Parts_Needed].[Status] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [CreateByUserID] = isNull(cast([Incident_ServiceOrder_Parts_Needed].[CreateByUserID] as varchar(36)), '\N'),
	 [CreatedDate] = isNull(convert(varchar(50), [Incident_ServiceOrder_Parts_Needed].[CreatedDate], 21), '\N'),
	 [UpdateByUserID] = isNull(cast([Incident_ServiceOrder_Parts_Needed].[UpdateByUserID] as varchar(36)), '\N'),
	 [UpdateDate] = isNull(convert(varchar(50), [Incident_ServiceOrder_Parts_Needed].[UpdateDate], 21), '\N'),
	 [Quantity_Located] = isNull(cast([Incident_ServiceOrder_Parts_Needed].[Quantity_Located] as varchar(36)), '\N'),
	 [Quantity_Reserved] = isNull(cast([Incident_ServiceOrder_Parts_Needed].[Quantity_Reserved] as varchar(36)), '\N')
from Ticketing.dbo.Incident_ServiceOrder_Parts_Needed