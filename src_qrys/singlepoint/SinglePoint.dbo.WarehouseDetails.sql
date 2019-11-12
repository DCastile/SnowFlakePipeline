select
	 [WarehouseID] = concat(char(34), isNull(cast([WarehouseDetails].[WarehouseID] as nvarchar(max)), '\N'), char(34)),
	 [SegmentID] = concat(char(34), isNull(cast([WarehouseDetails].[SegmentID] as nvarchar(max)), '\N'), char(34)),
	 [WhseKey] = concat(char(34), isNull(cast([WarehouseDetails].[WhseKey] as nvarchar(max)), '\N'), char(34)),
	 [WhseID] = concat(char(34), isNull(cast([WarehouseDetails].[WhseID] as nvarchar(max)), '\N'), char(34)),
	 [WhseDescription] = concat(char(34), isNull(cast([WarehouseDetails].[WhseDescription] as nvarchar(max)), '\N'), char(34)),
	 [InvtGLAcctKey] = concat(char(34), isNull(cast([WarehouseDetails].[InvtGLAcctKey] as nvarchar(max)), '\N'), char(34)),
	 [Location] = concat(char(34), isNull(cast([WarehouseDetails].[Location] as nvarchar(max)), '\N'), char(34)),
	 [Region] = concat(char(34), isNull(cast([WarehouseDetails].[Region] as nvarchar(max)), '\N'), char(34)),
	 [RSM] = concat(char(34), isNull(cast([WarehouseDetails].[RSM] as nvarchar(max)), '\N'), char(34)),
	 [Territory] = concat(char(34), isNull(cast([WarehouseDetails].[Territory] as nvarchar(max)), '\N'), char(34)),
	 [EmailSMS] = concat(char(34), isNull(cast([WarehouseDetails].[EmailSMS] as nvarchar(max)), '\N'), char(34)),
	 [EmailMobile] = concat(char(34), isNull(cast([WarehouseDetails].[EmailMobile] as nvarchar(max)), '\N'), char(34)),
	 [GM] = concat(char(34), isNull(cast([WarehouseDetails].[GM] as nvarchar(max)), '\N'), char(34)),
	 [EmailGM] = concat(char(34), isNull(cast([WarehouseDetails].[EmailGM] as nvarchar(max)), '\N'), char(34)),
	 [EMailContracts] = concat(char(34), isNull(cast([WarehouseDetails].[EMailContracts] as nvarchar(max)), '\N'), char(34)),
	 [EmailRegionalMgr] = concat(char(34), isNull(cast([WarehouseDetails].[EmailRegionalMgr] as nvarchar(max)), '\N'), char(34)),
	 [RegionalMgr] = concat(char(34), isNull(cast([WarehouseDetails].[RegionalMgr] as nvarchar(max)), '\N'), char(34)),
	 [RSMPartnerID] = concat(char(34), isNull(cast([WarehouseDetails].[RSMPartnerID] as nvarchar(max)), '\N'), char(34)),
	 [RSMPartnerKey] = concat(char(34), isNull(cast([WarehouseDetails].[RSMPartnerKey] as nvarchar(max)), '\N'), char(34)),
	 [CreateDate] = isNull(convert(varchar(50), [WarehouseDetails].[CreateDate], 21), '\N'),
	 [EmailDirMobile] = concat(char(34), isNull(cast([WarehouseDetails].[EmailDirMobile] as nvarchar(max)), '\N'), char(34))
from SinglePoint.dbo.WarehouseDetails