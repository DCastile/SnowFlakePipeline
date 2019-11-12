select
	 [MfgCodeID] = concat(char(34), [MfgCodes].[MfgCodeID], char(34)),
	 [MfgName] = concat(char(34), [MfgCodes].[MfgName], char(34)),
	 [InactiveFlag] = concat(char(34), [MfgCodes].[InactiveFlag], char(34)),
	 [ChangedByID] = concat(char(34), [MfgCodes].[ChangedByID], char(34)),
	 [LastChanged] = convert(varchar(50), [MfgCodes].[LastChanged], 21),
	 [SAPVendorKey] = concat(char(34), [MfgCodes].[SAPVendorKey], char(34))
from SinglePoint.dbo.MfgCodes