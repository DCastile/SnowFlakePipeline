select
	 [WarehouseID] = isNull(cast([WarehouseDetails].[WarehouseID] as varchar(36)), '\N'),
	 [SegmentID] = concat(char(34), isNull(replace(cast([WarehouseDetails].[SegmentID] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [WhseKey] = isNull(cast([WarehouseDetails].[WhseKey] as varchar(36)), '\N'),
	 [WhseID] = concat(char(34), isNull(replace(cast([WarehouseDetails].[WhseID] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [WhseDescription] = concat(char(34), isNull(replace(cast([WarehouseDetails].[WhseDescription] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [InvtGLAcctKey] = isNull(cast([WarehouseDetails].[InvtGLAcctKey] as varchar(36)), '\N'),
	 [Location] = concat(char(34), isNull(replace(cast([WarehouseDetails].[Location] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [Region] = concat(char(34), isNull(replace(cast([WarehouseDetails].[Region] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [RSM] = concat(char(34), isNull(replace(cast([WarehouseDetails].[RSM] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [Territory] = concat(char(34), isNull(replace(cast([WarehouseDetails].[Territory] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [EmailSMS] = concat(char(34), isNull(replace(cast([WarehouseDetails].[EmailSMS] as nvarchar(100)), char(34), char(0)), '\N'), char(34)),
	 [EmailMobile] = concat(char(34), isNull(replace(cast([WarehouseDetails].[EmailMobile] as nvarchar(100)), char(34), char(0)), '\N'), char(34)),
	 [GM] = concat(char(34), isNull(replace(cast([WarehouseDetails].[GM] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [EmailGM] = concat(char(34), isNull(replace(cast([WarehouseDetails].[EmailGM] as nvarchar(100)), char(34), char(0)), '\N'), char(34)),
	 [EMailContracts] = concat(char(34), isNull(replace(cast([WarehouseDetails].[EMailContracts] as nvarchar(100)), char(34), char(0)), '\N'), char(34)),
	 [EmailRegionalMgr] = concat(char(34), isNull(replace(cast([WarehouseDetails].[EmailRegionalMgr] as nvarchar(100)), char(34), char(0)), '\N'), char(34)),
	 [RegionalMgr] = concat(char(34), isNull(replace(cast([WarehouseDetails].[RegionalMgr] as nvarchar(100)), char(34), char(0)), '\N'), char(34)),
	 [RSMPartnerID] = concat(char(34), isNull(replace(cast([WarehouseDetails].[RSMPartnerID] as nvarchar(12)), char(34), char(0)), '\N'), char(34)),
	 [RSMPartnerKey] = isNull(cast([WarehouseDetails].[RSMPartnerKey] as varchar(36)), '\N'),
	 [CreateDate] = isNull(convert(varchar(50), [WarehouseDetails].[CreateDate], 21), '\N'),
	 [EmailDirMobile] = concat(char(34), isNull(replace(cast([WarehouseDetails].[EmailDirMobile] as nvarchar(255)), char(34), char(0)), '\N'), char(34))
from SinglePoint.dbo.WarehouseDetails with(nolock)