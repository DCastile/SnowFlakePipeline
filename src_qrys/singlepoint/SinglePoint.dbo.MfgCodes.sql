select
	 [MfgCodeID] = concat('"', [MfgCodes].[MfgCodeID], '"'),
	 [MfgName] = concat('"', [MfgCodes].[MfgName], '"'),
	 [InactiveFlag] = concat('"', [MfgCodes].[InactiveFlag], '"'),
	 [ChangedByID] = concat('"', [MfgCodes].[ChangedByID], '"'),
	 [LastChanged] = convert(varchar(50), [MfgCodes].[LastChanged], 21),
	 [SAPVendorKey] = concat('"', [MfgCodes].[SAPVendorKey], '"')
from SinglePoint.dbo.MfgCodes