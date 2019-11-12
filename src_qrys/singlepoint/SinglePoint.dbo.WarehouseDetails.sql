select
	 [WarehouseID] = concat(char(34), [WarehouseDetails].[WarehouseID], char(34)),
	 [SegmentID] = concat(char(34), [WarehouseDetails].[SegmentID], char(34)),
	 [WhseKey] = concat(char(34), [WarehouseDetails].[WhseKey], char(34)),
	 [WhseID] = concat(char(34), [WarehouseDetails].[WhseID], char(34)),
	 [WhseDescription] = concat(char(34), [WarehouseDetails].[WhseDescription], char(34)),
	 [InvtGLAcctKey] = concat(char(34), [WarehouseDetails].[InvtGLAcctKey], char(34)),
	 [Location] = concat(char(34), [WarehouseDetails].[Location], char(34)),
	 [Region] = concat(char(34), [WarehouseDetails].[Region], char(34)),
	 [RSM] = concat(char(34), [WarehouseDetails].[RSM], char(34)),
	 [Territory] = concat(char(34), [WarehouseDetails].[Territory], char(34)),
	 [EmailSMS] = concat(char(34), [WarehouseDetails].[EmailSMS], char(34)),
	 [EmailMobile] = concat(char(34), [WarehouseDetails].[EmailMobile], char(34)),
	 [GM] = concat(char(34), [WarehouseDetails].[GM], char(34)),
	 [EmailGM] = concat(char(34), [WarehouseDetails].[EmailGM], char(34)),
	 [EMailContracts] = concat(char(34), [WarehouseDetails].[EMailContracts], char(34)),
	 [EmailRegionalMgr] = concat(char(34), [WarehouseDetails].[EmailRegionalMgr], char(34)),
	 [RegionalMgr] = concat(char(34), [WarehouseDetails].[RegionalMgr], char(34)),
	 [RSMPartnerID] = concat(char(34), [WarehouseDetails].[RSMPartnerID], char(34)),
	 [RSMPartnerKey] = concat(char(34), [WarehouseDetails].[RSMPartnerKey], char(34)),
	 [CreateDate] = convert(varchar(50), [WarehouseDetails].[CreateDate], 21),
	 [EmailDirMobile] = concat(char(34), [WarehouseDetails].[EmailDirMobile], char(34))
from SinglePoint.dbo.WarehouseDetails