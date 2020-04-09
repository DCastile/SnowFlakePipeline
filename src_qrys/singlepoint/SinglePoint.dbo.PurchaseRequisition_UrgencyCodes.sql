select
	 [UrgencyCodeID] = isNull(cast([PurchaseRequisition_UrgencyCodes].[UrgencyCodeID] as varchar(36)), '\N'),
	 [SAP_Key] = isNull(cast([PurchaseRequisition_UrgencyCodes].[SAP_Key] as varchar(36)), '\N'),
	 [UrgencyCode] = concat(char(34), isNull(replace(cast([PurchaseRequisition_UrgencyCodes].[UrgencyCode] as nvarchar(8)), char(34), char(0)), '\N'), char(34)),
	 [UrgencyDescription] = concat(char(34), isNull(replace(cast([PurchaseRequisition_UrgencyCodes].[UrgencyDescription] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [CreatedByID] = isNull(cast([PurchaseRequisition_UrgencyCodes].[CreatedByID] as varchar(36)), '\N'),
	 [CreatedDate] = isNull(convert(varchar(50), [PurchaseRequisition_UrgencyCodes].[CreatedDate], 21), '\N'),
	 [ChangedByID] = isNull(cast([PurchaseRequisition_UrgencyCodes].[ChangedByID] as varchar(36)), '\N'),
	 [LastChanged] = isNull(convert(varchar(50), [PurchaseRequisition_UrgencyCodes].[LastChanged], 21), '\N')
from SinglePoint.dbo.PurchaseRequisition_UrgencyCodes