select
	 [UrgencyCodeID] = concat(char(34), [PurchaseRequisition_UrgencyCodes].[UrgencyCodeID], char(34)),
	 [SAP_Key] = concat(char(34), [PurchaseRequisition_UrgencyCodes].[SAP_Key], char(34)),
	 [UrgencyCode] = concat(char(34), [PurchaseRequisition_UrgencyCodes].[UrgencyCode], char(34)),
	 [UrgencyDescription] = concat(char(34), [PurchaseRequisition_UrgencyCodes].[UrgencyDescription], char(34)),
	 [CreatedByID] = concat(char(34), [PurchaseRequisition_UrgencyCodes].[CreatedByID], char(34)),
	 [CreatedDate] = convert(varchar(50), [PurchaseRequisition_UrgencyCodes].[CreatedDate], 21),
	 [ChangedByID] = concat(char(34), [PurchaseRequisition_UrgencyCodes].[ChangedByID], char(34)),
	 [LastChanged] = convert(varchar(50), [PurchaseRequisition_UrgencyCodes].[LastChanged], 21)
from SinglePoint.dbo.PurchaseRequisition_UrgencyCodes