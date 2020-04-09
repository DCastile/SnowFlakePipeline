select
	 [RequisitionID] = isNull(cast([PurchaseRequisition].[RequisitionID] as varchar(36)), '\N'),
	 [RequisitionNumber] = concat(char(34), isNull(replace(cast([PurchaseRequisition].[RequisitionNumber] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [ShipTo_Type] = concat(char(34), isNull(replace(cast([PurchaseRequisition].[ShipTo_Type] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [ShipTo_WarehouseID] = isNull(cast([PurchaseRequisition].[ShipTo_WarehouseID] as varchar(36)), '\N'),
	 [ShipTo_AddressID] = isNull(cast([PurchaseRequisition].[ShipTo_AddressID] as varchar(36)), '\N'),
	 [CreatedBy_UserID] = isNull(cast([PurchaseRequisition].[CreatedBy_UserID] as varchar(36)), '\N'),
	 [CreatedDate] = isNull(convert(varchar(50), [PurchaseRequisition].[CreatedDate], 21), '\N'),
	 [Status] = concat(char(34), isNull(replace(cast([PurchaseRequisition].[Status] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [ObjectType] = concat(char(34), isNull(replace(cast([PurchaseRequisition].[ObjectType] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [ObjectID] = isNull(cast([PurchaseRequisition].[ObjectID] as varchar(36)), '\N'),
	 [ObjectReference] = concat(char(34), isNull(replace(cast([PurchaseRequisition].[ObjectReference] as nvarchar(255)), char(34), char(0)), '\N'), char(34)),
	 [ServiceOrderID] = isNull(cast([PurchaseRequisition].[ServiceOrderID] as varchar(36)), '\N'),
	 [NeededByDateTime] = isNull(convert(varchar(50), [PurchaseRequisition].[NeededByDateTime], 21), '\N'),
	 [Priority] = concat(char(34), isNull(replace(cast([PurchaseRequisition].[Priority] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [ReasonCode] = concat(char(34), isNull(replace(cast([PurchaseRequisition].[ReasonCode] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [ApprovalID] = isNull(cast([PurchaseRequisition].[ApprovalID] as varchar(36)), '\N'),
	 [ApproverID] = isNull(cast([PurchaseRequisition].[ApproverID] as varchar(36)), '\N'),
	 [LineNumber] = concat(char(34), isNull(replace(cast([PurchaseRequisition].[LineNumber] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [RequisitionDescription] = concat(char(34), isNull(replace(cast([PurchaseRequisition].[RequisitionDescription] as nvarchar(100)), char(34), char(0)), '\N'), char(34)),
	 [RequisitionComments] = concat(char(34), isNull(replace(cast([PurchaseRequisition].[RequisitionComments] as nvarchar(800)), char(34), char(0)), '\N'), char(34)),
	 [SAP_SyncAck_DateTime] = isNull(convert(varchar(50), [PurchaseRequisition].[SAP_SyncAck_DateTime], 21), '\N'),
	 [LastChanged] = isNull(convert(varchar(50), [PurchaseRequisition].[LastChanged], 21), '\N'),
	 [ChangedByID] = isNull(cast([PurchaseRequisition].[ChangedByID] as varchar(36)), '\N'),
	 [UnitOfMeasure] = concat(char(34), isNull(replace(cast([PurchaseRequisition].[UnitOfMeasure] as nvarchar(50)), char(34), char(0)), '\N'), char(34))
from SinglePoint.dbo.PurchaseRequisition