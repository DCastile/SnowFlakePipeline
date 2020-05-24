select
	 [RequisitionLineID] = isNull(cast([PurchaseRequisition_Lines].[RequisitionLineID] as varchar(36)), '\N'),
	 [RequisitionID] = isNull(cast([PurchaseRequisition_Lines].[RequisitionID] as varchar(36)), '\N'),
	 [LineNumber] = isNull(cast([PurchaseRequisition_Lines].[LineNumber] as varchar(36)), '\N'),
	 [ItemID] = isNull(cast([PurchaseRequisition_Lines].[ItemID] as varchar(36)), '\N'),
	 [ItemNumber] = concat(char(34), isNull(replace(cast([PurchaseRequisition_Lines].[ItemNumber] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [ItemDescription] = concat(char(34), isNull(replace(cast([PurchaseRequisition_Lines].[ItemDescription] as nvarchar(500)), char(34), char(0)), '\N'), char(34)),
	 [Quantity] = isNull(cast([PurchaseRequisition_Lines].[Quantity] as varchar(36)), '\N'),
	 [CreatedBy_UserID] = isNull(cast([PurchaseRequisition_Lines].[CreatedBy_UserID] as varchar(36)), '\N'),
	 [CreatedDate] = isNull(convert(varchar(50), [PurchaseRequisition_Lines].[CreatedDate], 21), '\N'),
	 [Status] = concat(char(34), isNull(replace(cast([PurchaseRequisition_Lines].[Status] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [RequisitionNumber] = concat(char(34), isNull(replace(cast([PurchaseRequisition_Lines].[RequisitionNumber] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [ItemQuantity] = isNull(cast([PurchaseRequisition_Lines].[ItemQuantity] as varchar(36)), '\N'),
	 [CustomerID] = isNull(cast([PurchaseRequisition_Lines].[CustomerID] as varchar(36)), '\N'),
	 [ContractHeaderID] = isNull(cast([PurchaseRequisition_Lines].[ContractHeaderID] as varchar(36)), '\N'),
	 [ServiceOrderID] = isNull(cast([PurchaseRequisition_Lines].[ServiceOrderID] as varchar(36)), '\N'),
	 [WarehouseID] = isNull(cast([PurchaseRequisition_Lines].[WarehouseID] as varchar(36)), '\N'),
	 [AddressID] = isNull(cast([PurchaseRequisition_Lines].[AddressID] as varchar(36)), '\N'),
	 [UrgencyCodeID] = isNull(cast([PurchaseRequisition_Lines].[UrgencyCodeID] as varchar(36)), '\N'),
	 [DeliveryDate] = isNull(convert(varchar(50), [PurchaseRequisition_Lines].[DeliveryDate], 21), '\N'),
	 [ShipToType] = concat(char(34), isNull(replace(cast([PurchaseRequisition_Lines].[ShipToType] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [ApprovalByID] = isNull(cast([PurchaseRequisition_Lines].[ApprovalByID] as varchar(36)), '\N'),
	 [ApprovalDate] = isNull(convert(varchar(50), [PurchaseRequisition_Lines].[ApprovalDate], 21), '\N'),
	 [ContactID] = isNull(cast([PurchaseRequisition_Lines].[ContactID] as varchar(36)), '\N'),
	 [SAP_SyncAck_DateTime] = isNull(convert(varchar(50), [PurchaseRequisition_Lines].[SAP_SyncAck_DateTime], 21), '\N'),
	 [SAP_SyncMsg] = concat(char(34), isNull(replace(cast([PurchaseRequisition_Lines].[SAP_SyncMsg] as nvarchar(100)), char(34), char(0)), '\N'), char(34)),
	 [LastChangedByID] = isNull(cast([PurchaseRequisition_Lines].[LastChangedByID] as varchar(36)), '\N'),
	 [LastChanged] = isNull(convert(varchar(50), [PurchaseRequisition_Lines].[LastChanged], 21), '\N'),
	 [RequisitionLine] = concat(char(34), isNull(replace(cast([PurchaseRequisition_Lines].[RequisitionLine] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [UnitOfMeasure] = concat(char(34), isNull(replace(cast([PurchaseRequisition_Lines].[UnitOfMeasure] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [TotalCost] = isNull(cast([PurchaseRequisition_Lines].[TotalCost] as varchar(36)), '\N'),
	 [Currency] = concat(char(34), isNull(replace(cast([PurchaseRequisition_Lines].[Currency] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [Notes] = concat(char(34), isNull(replace(cast([PurchaseRequisition_Lines].[Notes] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [AddressName] = concat(char(34), isNull(replace(cast([PurchaseRequisition_Lines].[AddressName] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [AddressStreet] = concat(char(34), isNull(replace(cast([PurchaseRequisition_Lines].[AddressStreet] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [AddressCity] = concat(char(34), isNull(replace(cast([PurchaseRequisition_Lines].[AddressCity] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [AddressPostalCode] = concat(char(34), isNull(replace(cast([PurchaseRequisition_Lines].[AddressPostalCode] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [AddressCountry] = concat(char(34), isNull(replace(cast([PurchaseRequisition_Lines].[AddressCountry] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [ContactName] = concat(char(34), isNull(replace(cast([PurchaseRequisition_Lines].[ContactName] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [AddressRegion] = concat(char(34), isNull(replace(cast([PurchaseRequisition_Lines].[AddressRegion] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [IncidentNumber] = concat(char(34), isNull(replace(cast([PurchaseRequisition_Lines].[IncidentNumber] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [CompanyName] = concat(char(34), isNull(replace(cast([PurchaseRequisition_Lines].[CompanyName] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [Address_Line2] = concat(char(34), isNull(replace(cast([PurchaseRequisition_Lines].[Address_Line2] as nvarchar(50)), char(34), char(0)), '\N'), char(34))
from SinglePoint.dbo.PurchaseRequisition_Lines with(nolock)