select
	[IncidentID] = isNull(quotename([IncidentID], char(34)), '\N'),
	[CustomerID] = isNull(quotename([CustomerID], char(34)), '\N'),
	[AssetHeaderID] = isNull(quotename([AssetHeaderID], char(34)), '\N'),
	[ContLineID] = isNull(quotename([ContLineID], char(34)), '\N'),
	[IncidentNum] = isNull(quotename([IncidentNum], char(34)), '\N'),
	[Description] = isNull(quotename([Description], char(34)), '\N'),
	[IncidentDate] = isNull(convert(varchar(50), [IncidentDate], 21), '\N'),
	[SSIncidentKey] = isNull(quotename([SSIncidentKey], char(34)), '\N'),
	[SSIncidentID] = isNull(quotename([SSIncidentID], char(34)), '\N'),
	[AssignedToUserID] = isNull(quotename([AssignedToUserID], char(34)), '\N'),
	[ContactID] = isNull(quotename([ContactID], char(34)), '\N'),
	[StatusCodeID] = isNull(quotename([StatusCodeID], char(34)), '\N'),
	[CloseDate] = isNull(convert(varchar(50), [CloseDate], 21), '\N'),
	[Notes] = isNull(quotename([Notes], char(34)), '\N'),
	[CallBackExpected] = isNull(convert(varchar(50), [CallBackExpected], 21), '\N'),
	[CallBackActual] = isNull(convert(varchar(50), [CallBackActual], 21), '\N'),
	[CallBackEscalate] = isNull(convert(varchar(50), [CallBackEscalate], 21), '\N'),
	[RepairExpected] = isNull(convert(varchar(50), [RepairExpected], 21), '\N'),
	[RepairActual] = isNull(convert(varchar(50), [RepairActual], 21), '\N'),
	[RepairEscalate] = isNull(convert(varchar(50), [RepairEscalate], 21), '\N'),
	[RepairSchedFlag] = isNull(quotename([RepairSchedFlag], char(34)), '\N'),
	[CreateByID] = isNull(quotename([CreateByID], char(34)), '\N'),
	[CreateDate] = isNull(convert(varchar(50), [CreateDate], 21), '\N'),
	[ChangedByID] = isNull(quotename([ChangedByID], char(34)), '\N'),
	[LastChanged] = isNull(convert(varchar(50), [LastChanged], 21), '\N'),
	[CallInFlag] = isNull(quotename([CallInFlag], char(34)), '\N'),
	[PriorityCodeKey] = isNull(quotename([PriorityCodeKey], char(34)), '\N'),
	[IncAddrID] = isNull(quotename([IncAddrID], char(34)), '\N'),
	[SSShipToCustAddrKey] = isNull(quotename([SSShipToCustAddrKey], char(34)), '\N'),
	[RCAFlag] = isNull(quotename([RCAFlag], char(34)), '\N'),
	[SPIncInsert] = isNull(quotename([SPIncInsert], char(34)), '\N'),
	[SPIncUpdate] = isNull(quotename([SPIncUpdate], char(34)), '\N'),
	[IncNumPad] = isNull(quotename([IncNumPad], char(34)), '\N'),
	[FollowUpDate] = isNull(convert(varchar(50), [FollowUpDate], 21), '\N'),
	[SSSroKey] = isNull(quotename([SSSroKey], char(34)), '\N'),
	[SSSroID] = isNull(quotename([SSSroID], char(34)), '\N'),
	[SSSroTypeKey] = isNull(quotename([SSSroTypeKey], char(34)), '\N'),
	[RequesterID] = isNull(quotename([RequesterID], char(34)), '\N'),
	[CustomerTicketNumber] = isNull(quotename([CustomerTicketNumber], char(34)), '\N'),
	[SecondaryContactID] = isNull(quotename([SecondaryContactID], char(34)), '\N'),
	[ImportFrom] = isNull(quotename([ImportFrom], char(34)), '\N'),
	[ImportDate] = isNull(convert(varchar(50), [ImportDate], 21), '\N'),
	[ImportBatch] = isNull(quotename([ImportBatch], char(34)), '\N'),
	[SroTemplateID] = isNull(quotename([SroTemplateID], char(34)), '\N'),
	[SroPending] = isNull(quotename([SroPending], char(34)), '\N'),
	[IsSmsIncident] = isNull(quotename([IsSmsIncident], char(34)), '\N'),
	[SroHeaderID] = isNull(quotename([SroHeaderID], char(34)), '\N'),
	[SroTypeID] = isNull(quotename([SroTypeID], char(34)), '\N'),
	[AsyncStatus] = isNull(quotename([AsyncStatus], char(34)), '\N'),
	[AsyncError] = isNull(quotename([AsyncError], char(34)), '\N'),
	[SourceSystem] = isNull(quotename([SourceSystem], char(34)), '\N'),
	[SourceCompany] = isNull(quotename([SourceCompany], char(34)), '\N'),
	[SourceProc] = isNull(quotename([SourceProc], char(34)), '\N'),
	[PartnerTicketNumber] = isNull(quotename([PartnerTicketNumber], char(34)), '\N'),
	[Incident_Type] = isNull(quotename([Incident_Type], char(34)), '\N'),
	[Serial_Number] = isNull(quotename([Serial_Number], char(34)), '\N'),
	[Manufacturer] = isNull(quotename([Manufacturer], char(34)), '\N'),
	[Item_Number] = isNull(quotename([Item_Number], char(34)), '\N'),
	[Asset_Type] = isNull(quotename([Asset_Type], char(34)), '\N'),
	[Contract_Number] = isNull(quotename([Contract_Number], char(34)), '\N'),
	[Contract_Line_Number] = isNull(quotename([Contract_Line_Number], char(34)), '\N'),
	[Service_Level_Agreement] = isNull(quotename([Service_Level_Agreement], char(34)), '\N'),
	[Customer_Name] = isNull(quotename([Customer_Name], char(34)), '\N'),
	[Status] = isNull(quotename([Status], char(34)), '\N'),
	[Priority] = isNull(quotename([Priority], char(34)), '\N'),
	[Priority_Code] = isNull(quotename([Priority_Code], char(34)), '\N'),
	[Urgency] = isNull(quotename([Urgency], char(34)), '\N'),
	[Impact] = isNull(quotename([Impact], char(34)), '\N'),
	[Address_Display] = isNull(quotename([Address_Display], char(34)), '\N'),
	[Address_Line_1] = isNull(quotename([Address_Line_1], char(34)), '\N'),
	[Address_Line_2] = isNull(quotename([Address_Line_2], char(34)), '\N'),
	[Address_Line_3] = isNull(quotename([Address_Line_3], char(34)), '\N'),
	[Address_Line_4] = isNull(quotename([Address_Line_4], char(34)), '\N'),
	[Address_City] = isNull(quotename([Address_City], char(34)), '\N'),
	[Address_State] = isNull(quotename([Address_State], char(34)), '\N'),
	[Address_PostalCode] = isNull(quotename([Address_PostalCode], char(34)), '\N'),
	[Address_Region] = isNull(quotename([Address_Region], char(34)), '\N'),
	[Address_Country] = isNull(quotename([Address_Country], char(34)), '\N'),
	[Address_Latitude] = isNull(quotename([Address_Latitude], char(34)), '\N'),
	[Address_Longitude] = isNull(quotename([Address_Longitude], char(34)), '\N'),
	[Address_GeoPrecision] = isNull(quotename([Address_GeoPrecision], char(34)), '\N'),
	[Requester_Name] = isNull(quotename([Requester_Name], char(34)), '\N'),
	[Requester_Phone] = isNull(quotename([Requester_Phone], char(34)), '\N'),
	[Requester_EMail] = isNull(quotename([Requester_EMail], char(34)), '\N'),
	[Point_of_Contact_Name] = isNull(quotename([Point_of_Contact_Name], char(34)), '\N'),
	[Point_of_Contact_Phone] = isNull(quotename([Point_of_Contact_Phone], char(34)), '\N'),
	[Point_of_Contact_EMail] = isNull(quotename([Point_of_Contact_EMail], char(34)), '\N'),
	[SAP_Incident_Key] = isNull(quotename([SAP_Incident_Key], char(34)), '\N'),
	[SAP_Sold_To_Key] = isNull(quotename([SAP_Sold_To_Key], char(34)), '\N'),
	[SAP_Ship_To_Key] = isNull(quotename([SAP_Ship_To_Key], char(34)), '\N'),
	[Reason_Code_1] = isNull(quotename([Reason_Code_1], char(34)), '\N'),
	[Reason_Code_2] = isNull(quotename([Reason_Code_2], char(34)), '\N'),
	[Reason_Code_3] = isNull(quotename([Reason_Code_3], char(34)), '\N'),
	[Resolution_Code_1] = isNull(quotename([Resolution_Code_1], char(34)), '\N'),
	[Resolution_Code_2] = isNull(quotename([Resolution_Code_2], char(34)), '\N'),
	[Resolution_Code_3] = isNull(quotename([Resolution_Code_3], char(34)), '\N'),
	[ServiceOrganization] = isNull(quotename([ServiceOrganization], char(34)), '\N'),
	[SoldTo_Customer_ID] = isNull(quotename([SoldTo_Customer_ID], char(34)), '\N'),
	[SoldTo_Customer_Name] = isNull(quotename([SoldTo_Customer_Name], char(34)), '\N'),
	[Service_Contract_Line_ID] = isNull(quotename([Service_Contract_Line_ID], char(34)), '\N'),
	[Service_Contract_Line_Number] = isNull(quotename([Service_Contract_Line_Number], char(34)), '\N'),
	[Service_Contract_Number] = isNull(quotename([Service_Contract_Number], char(34)), '\N'),
	[Customer_Company] = isNull(quotename([Customer_Company], char(34)), '\N'),
	[PartnerAssignedToID] = isNull(quotename([PartnerAssignedToID], char(34)), '\N'),
	[PartnerAssignedToName] = isNull(quotename([PartnerAssignedToName], char(34)), '\N'),
	[PartnerAssginedTicketNumber] = isNull(quotename([PartnerAssginedTicketNumber], char(34)), '\N'),
	[ServiceWarehouse_ID] = isNull(quotename([ServiceWarehouse_ID], char(34)), '\N'),
	[ServiceWarehouse_Code] = isNull(quotename([ServiceWarehouse_Code], char(34)), '\N'),
	[Contract_ID] = isNull(quotename([Contract_ID], char(34)), '\N'),
	[ImpactID] = isNull(quotename([ImpactID], char(34)), '\N'),
	[UrgencyID] = isNull(quotename([UrgencyID], char(34)), '\N'),
	[PriorityID] = isNull(quotename([PriorityID], char(34)), '\N'),
	[SubStatus] = isNull(quotename([SubStatus], char(34)), '\N'),
	[Ticket_Type] = isNull(quotename([Ticket_Type], char(34)), '\N'),
	[Asset_Name] = isNull(quotename([Asset_Name], char(34)), '\N'),
	[Service_Level_Agreement_ID] = isNull(quotename([Service_Level_Agreement_ID], char(34)), '\N'),
	[Reason_Code_1_ID] = isNull(quotename([Reason_Code_1_ID], char(34)), '\N'),
	[Reason_Code_2_ID] = isNull(quotename([Reason_Code_2_ID], char(34)), '\N'),
	[Reason_Code_3_ID] = isNull(quotename([Reason_Code_3_ID], char(34)), '\N'),
	[Resolution_Code_1_ID] = isNull(quotename([Resolution_Code_1_ID], char(34)), '\N'),
	[Resolution_Code_2_ID] = isNull(quotename([Resolution_Code_2_ID], char(34)), '\N'),
	[Resolution_Code_3_ID] = isNull(quotename([Resolution_Code_3_ID], char(34)), '\N'),
	[EscalationLevel] = isNull(quotename([EscalationLevel], char(34)), '\N'),
	[Source] = isNull(quotename([Source], char(34)), '\N'),
	[UTC_CreateDate] = isNull(convert(varchar(50), [UTC_CreateDate], 21), '\N'),
	[UTC_IncidentDate] = isNull(convert(varchar(50), [UTC_IncidentDate], 21), '\N'),
	[UTC_ResolvedDate] = isNull(convert(varchar(50), [UTC_ResolvedDate], 21), '\N'),
	[UTC_ClosedDate] = isNull(convert(varchar(50), [UTC_ClosedDate], 21), '\N'),
	[UTC_UpdateDate] = isNull(convert(varchar(50), [UTC_UpdateDate], 21), '\N'),
	[InstallBaseID] = isNull(quotename([InstallBaseID], char(34)), '\N'),
	[ContractTypeID] = isNull(quotename([ContractTypeID], char(34)), '\N'),
	[flagPendingCustomerResponse] = isNull(quotename([flagPendingCustomerResponse], char(34)), '\N')
from SinglePoint.dbo.Incidents