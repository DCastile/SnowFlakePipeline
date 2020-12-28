select
	 [WorkOrderID] = isNull(cast([Incident_WorkOrder_Invoice_Header].[WorkOrderID] as varchar(36)), '\N'),
	 [IncidentID] = isNull(cast([Incident_WorkOrder_Invoice_Header].[IncidentID] as varchar(36)), '\N'),
	 [Status] = concat(char(34), isNull(replace(cast([Incident_WorkOrder_Invoice_Header].[Status] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [Currency] = concat(char(34), isNull(replace(cast([Incident_WorkOrder_Invoice_Header].[Currency] as nvarchar(3)), char(34), char(0)), '\N'), char(34)),
	 [CreatedDateTime] = isNull(convert(varchar(50), [Incident_WorkOrder_Invoice_Header].[CreatedDateTime], 21), '\N'),
	 [CreatedByUserID] = isNull(cast([Incident_WorkOrder_Invoice_Header].[CreatedByUserID] as varchar(36)), '\N'),
	 [SAP_Invoice_Number] = concat(char(34), isNull(replace(cast([Incident_WorkOrder_Invoice_Header].[SAP_Invoice_Number] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [Amount] = isNull(cast([Incident_WorkOrder_Invoice_Header].[Amount] as varchar(36)), '\N'),
	 [InvoicedByUserID] = isNull(cast([Incident_WorkOrder_Invoice_Header].[InvoicedByUserID] as varchar(36)), '\N')
from Ticketing.dbo.Incident_WorkOrder_Invoice_Header with(nolock)