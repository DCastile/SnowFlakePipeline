select
	 [ServiceOrderID] = concat(char(34), [Incident_ServiceOrder_Header].[ServiceOrderID], char(34)),
	 [IncidentID] = concat(char(34), [Incident_ServiceOrder_Header].[IncidentID], char(34)),
	 [ServiceOrderNumber] = concat(char(34), [Incident_ServiceOrder_Header].[ServiceOrderNumber], char(34)),
	 [ServiceOrderType] = concat(char(34), [Incident_ServiceOrder_Header].[ServiceOrderType], char(34)),
	 [FinancialSystem] = concat(char(34), [Incident_ServiceOrder_Header].[FinancialSystem], char(34)),
	 [ContractHeaderID] = concat(char(34), [Incident_ServiceOrder_Header].[ContractHeaderID], char(34)),
	 [ContractLineID] = concat(char(34), [Incident_ServiceOrder_Header].[ContractLineID], char(34)),
	 [WarrantyID] = concat(char(34), [Incident_ServiceOrder_Header].[WarrantyID], char(34)),
	 [Oracle_ID] = concat(char(34), [Incident_ServiceOrder_Header].[Oracle_ID], char(34)),
	 [BillToAddressID] = concat(char(34), [Incident_ServiceOrder_Header].[BillToAddressID], char(34)),
	 [ShipToAddressID] = concat(char(34), [Incident_ServiceOrder_Header].[ShipToAddressID], char(34)),
	 [CompanyID] = concat(char(34), [Incident_ServiceOrder_Header].[CompanyID], char(34)),
	 [Oracle_SyncDate] = convert(varchar(50), [Incident_ServiceOrder_Header].[Oracle_SyncDate], 21),
	 [ProjectNumber] = concat(char(34), [Incident_ServiceOrder_Header].[ProjectNumber], char(34)),
	 [Status] = concat(char(34), [Incident_ServiceOrder_Header].[Status], char(34)),
	 [Error] = concat(char(34), [Incident_ServiceOrder_Header].[Error], char(34)),
	 [CreateDate] = convert(varchar(50), [Incident_ServiceOrder_Header].[CreateDate], 21),
	 [HomeCurrency] = concat(char(34), [Incident_ServiceOrder_Header].[HomeCurrency], char(34)),
	 [LaborRate_RegularHours] = concat(char(34), [Incident_ServiceOrder_Header].[LaborRate_RegularHours], char(34)),
	 [LaborRate_AfterHours] = concat(char(34), [Incident_ServiceOrder_Header].[LaborRate_AfterHours], char(34)),
	 [LaborRate_EmergencyHours] = concat(char(34), [Incident_ServiceOrder_Header].[LaborRate_EmergencyHours], char(34)),
	 [PriceListID] = concat(char(34), [Incident_ServiceOrder_Header].[PriceListID], char(34)),
	 [ContractNumber] = concat(char(34), [Incident_ServiceOrder_Header].[ContractNumber], char(34)),
	 [ContractLineNumber] = concat(char(34), [Incident_ServiceOrder_Header].[ContractLineNumber], char(34)),
	 [BillToCustomerID] = concat(char(34), [Incident_ServiceOrder_Header].[BillToCustomerID], char(34)),
	 [SubcontractorID] = concat(char(34), [Incident_ServiceOrder_Header].[SubcontractorID], char(34)),
	 [WarehouseID] = concat(char(34), [Incident_ServiceOrder_Header].[WarehouseID], char(34)),
	 [SAP_ID] = concat(char(34), [Incident_ServiceOrder_Header].[SAP_ID], char(34)),
	 [SAP_SyncAckDate] = convert(varchar(50), [Incident_ServiceOrder_Header].[SAP_SyncAckDate], 21)
from Ticketing.dbo.Incident_ServiceOrder_Header