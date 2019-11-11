select
	 [SiteAuditID] = quotename([SiteAudits].[SiteAuditID], char(34)),
	 [CustomerID] = quotename([SiteAudits].[CustomerID], char(34)),
	 [ContractHeaderID] = quotename([SiteAudits].[ContractHeaderID], char(34)),
	 [StatusCodeID] = quotename([SiteAudits].[StatusCodeID], char(34)),
	 [SROKey] = quotename([SiteAudits].[SROKey], char(34)),
	 [SROID] = quotename([SiteAudits].[SROID], char(34)),
	 [CreateByID] = quotename([SiteAudits].[CreateByID], char(34)),
	 [CreateDate] = convert(varchar(50), [SiteAudits].[CreateDate], 21),
	 [ChangedByID] = quotename([SiteAudits].[ChangedByID], char(34)),
	 [LastChanged] = convert(varchar(50), [SiteAudits].[LastChanged], 21),
	 [SROAddressID] = quotename([SiteAudits].[SROAddressID], char(34)),
	 [CompleteDate] = convert(varchar(50), [SiteAudits].[CompleteDate], 21),
	 [CompleteByID] = quotename([SiteAudits].[CompleteByID], char(34)),
	 [OnSiteHours] = quotename([SiteAudits].[OnSiteHours], char(34)),
	 [DataEntryHours] = quotename([SiteAudits].[DataEntryHours], char(34)),
	 [SROWarehouseID] = quotename([SiteAudits].[SROWarehouseID], char(34)),
	 [SROHeaderID] = quotename([SiteAudits].[SROHeaderID], char(34)),
	 [SRONumber] = quotename([SiteAudits].[SRONumber], char(34)),
	 [AssignedToID] = quotename([SiteAudits].[AssignedToID], char(34)),
	 [ConfigImportFromMASDate] = convert(varchar(50), [SiteAudits].[ConfigImportFromMASDate], 21),
	 [ConfigExportToMASDate] = convert(varchar(50), [SiteAudits].[ConfigExportToMASDate], 21)
from SinglePoint.dbo.SiteAudits