select
	 [UrgencyCodeID] = concat(char(34), isNull(cast([PurchaseRequisition_UrgencyCodes].[UrgencyCodeID] as nvarchar(max)), '\N'), char(34)),
	 [SAP_Key] = concat(char(34), isNull(cast([PurchaseRequisition_UrgencyCodes].[SAP_Key] as nvarchar(max)), '\N'), char(34)),
	 [UrgencyCode] = concat(char(34), isNull(cast([PurchaseRequisition_UrgencyCodes].[UrgencyCode] as nvarchar(max)), '\N'), char(34)),
	 [UrgencyDescription] = concat(char(34), isNull(cast([PurchaseRequisition_UrgencyCodes].[UrgencyDescription] as nvarchar(max)), '\N'), char(34)),
	 [CreatedByID] = concat(char(34), isNull(cast([PurchaseRequisition_UrgencyCodes].[CreatedByID] as nvarchar(max)), '\N'), char(34)),
	 [CreatedDate] = isNull(convert(varchar(50), [PurchaseRequisition_UrgencyCodes].[CreatedDate], 21), '\N'),
	 [ChangedByID] = concat(char(34), isNull(cast([PurchaseRequisition_UrgencyCodes].[ChangedByID] as nvarchar(max)), '\N'), char(34)),
	 [LastChanged] = isNull(convert(varchar(50), [PurchaseRequisition_UrgencyCodes].[LastChanged], 21), '\N')
from SinglePoint.dbo.PurchaseRequisition_UrgencyCodes