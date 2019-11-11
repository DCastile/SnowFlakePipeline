select
	 [MfgCodeID] = quotename([MfgCodes].[MfgCodeID], char(34)),
	 [MfgName] = quotename([MfgCodes].[MfgName], char(34)),
	 [InactiveFlag] = quotename([MfgCodes].[InactiveFlag], char(34)),
	 [ChangedByID] = quotename([MfgCodes].[ChangedByID], char(34)),
	 [LastChanged] = convert(varchar(50), [MfgCodes].[LastChanged], 21),
	 [SAPVendorKey] = quotename([MfgCodes].[SAPVendorKey], char(34))
from SinglePoint.dbo.MfgCodes