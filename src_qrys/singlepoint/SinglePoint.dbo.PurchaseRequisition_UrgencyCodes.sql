select
	 [UrgencyCodeID] = quotename([PurchaseRequisition_UrgencyCodes].[UrgencyCodeID], char(34)),
	 [SAP_Key] = quotename([PurchaseRequisition_UrgencyCodes].[SAP_Key], char(34)),
	 [UrgencyCode] = quotename([PurchaseRequisition_UrgencyCodes].[UrgencyCode], char(34)),
	 [UrgencyDescription] = quotename([PurchaseRequisition_UrgencyCodes].[UrgencyDescription], char(34)),
	 [CreatedByID] = quotename([PurchaseRequisition_UrgencyCodes].[CreatedByID], char(34)),
	 [CreatedDate] = convert(varchar(50), [PurchaseRequisition_UrgencyCodes].[CreatedDate], 21),
	 [ChangedByID] = quotename([PurchaseRequisition_UrgencyCodes].[ChangedByID], char(34)),
	 [LastChanged] = convert(varchar(50), [PurchaseRequisition_UrgencyCodes].[LastChanged], 21)
from SinglePoint.dbo.PurchaseRequisition_UrgencyCodes