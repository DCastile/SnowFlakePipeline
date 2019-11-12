select
	 [UrgencyCodeID] = concat('"', [PurchaseRequisition_UrgencyCodes].[UrgencyCodeID], '"'),
	 [SAP_Key] = concat('"', [PurchaseRequisition_UrgencyCodes].[SAP_Key], '"'),
	 [UrgencyCode] = concat('"', [PurchaseRequisition_UrgencyCodes].[UrgencyCode], '"'),
	 [UrgencyDescription] = concat('"', [PurchaseRequisition_UrgencyCodes].[UrgencyDescription], '"'),
	 [CreatedByID] = concat('"', [PurchaseRequisition_UrgencyCodes].[CreatedByID], '"'),
	 [CreatedDate] = convert(varchar(50), [PurchaseRequisition_UrgencyCodes].[CreatedDate], 21),
	 [ChangedByID] = concat('"', [PurchaseRequisition_UrgencyCodes].[ChangedByID], '"'),
	 [LastChanged] = convert(varchar(50), [PurchaseRequisition_UrgencyCodes].[LastChanged], 21)
from SinglePoint.dbo.PurchaseRequisition_UrgencyCodes