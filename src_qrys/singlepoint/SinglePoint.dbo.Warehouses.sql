select
	 [WarehouseID] = isNull(quotename([WarehouseID], char(34)), '\N'),
	 [WhseID] = isNull(quotename([WhseID], char(34)), '\N'),
	 [Description] = isNull(quotename([Description], char(34)), '\N'),
	 [SMSWhseKey] = isNull(quotename([SMSWhseKey], char(34)), '\N'),
	 [Dispatchable] = isNull(quotename([Dispatchable], char(34)), '\N'),
	 [WhseRegion] = isNull(quotename([WhseRegion], char(34)), '\N'),
	 [CreateDate] = isNull(convert(varchar(50), [CreateDate], 21), '\N'),
	 [SAP_Plant_Key] = isNull(quotename([SAP_Plant_Key], char(34)), '\N'),
	 [MASCompanyID] = isNull(quotename([MASCompanyID], char(34)), '\N'),
	 [IsInternational] = isNull(quotename([IsInternational], char(34)), '\N'),
	 [Country] = isNull(quotename([Country], char(34)), '\N'),
	 [whseCompanyGuid] = isNull(quotename([whseCompanyGuid], char(34)), '\N'),
	 [Asm_UserID] = isNull(quotename([Asm_UserID], char(34)), '\N'),
	 [Rsd_UserID] = isNull(quotename([Rsd_UserID], char(34)), '\N'),
	 [TeamLead_UserID] = isNull(quotename([TeamLead_UserID], char(34)), '\N'),
	 [Primary_OnCall_UserID] = isNull(quotename([Primary_OnCall_UserID], char(34)), '\N'),
	 [Secondary_OnCall_UserID] = isNull(quotename([Secondary_OnCall_UserID], char(34)), '\N'),
	 [Type] = isNull(quotename([Type], char(34)), '\N'),
	 [Warehouse_Region_ID] = isNull(quotename([Warehouse_Region_ID], char(34)), '\N'),
	 [Warehouse_Region_Name] = isNull(quotename([Warehouse_Region_Name], char(34)), '\N'),
	 [Warehouse_Territory_ID] = isNull(quotename([Warehouse_Territory_ID], char(34)), '\N'),
	 [Warehouse_Territory_Name] = isNull(quotename([Warehouse_Territory_Name], char(34)), '\N'),
	 [TimeZone_Key] = isNull(quotename([TimeZone_Key], char(34)), '\N'),
	 [BusinessHours_StartTime] = isNull(quotename([BusinessHours_StartTime], char(34)), '\N'),
	 [BusinessHours_EndTime] = isNull(quotename([BusinessHours_EndTime], char(34)), '\N'),
	 [canBeNearest] = isNull(quotename([canBeNearest], char(34)), '\N'),
	 [Oracle_InventoryOrg_ID] = isNull(quotename([Oracle_InventoryOrg_ID], char(34)), '\N'),
	 [Oracle_InventoryOrg_Code] = isNull(quotename([Oracle_InventoryOrg_Code], char(34)), '\N'),
	 [Oracle_InventoryOrg_Name] = isNull(quotename([Oracle_InventoryOrg_Name], char(34)), '\N'),
	 [SiteAudit_NotRequired] = isNull(quotename([SiteAudit_NotRequired], char(34)), '\N'),
	 [ShowEngineerLocations] = isNull(quotename([ShowEngineerLocations], char(34)), '\N'),
	 [DefaultSecurityGroup] = isNull(quotename([DefaultSecurityGroup], char(34)), '\N'),
	 [MaxServiceRadius_Miles] = isNull(quotename([MaxServiceRadius_Miles], char(34)), '\N')
from SinglePoint.dbo.Warehouses