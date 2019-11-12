select
	 [MfgCodeID] = concat(char(34), isNull(cast([MfgCodes].[MfgCodeID] as nvarchar(max)), '\N'), char(34)),
	 [MfgName] = concat(char(34), isNull(cast([MfgCodes].[MfgName] as nvarchar(max)), '\N'), char(34)),
	 [InactiveFlag] = concat(char(34), isNull(cast([MfgCodes].[InactiveFlag] as nvarchar(max)), '\N'), char(34)),
	 [ChangedByID] = concat(char(34), isNull(cast([MfgCodes].[ChangedByID] as nvarchar(max)), '\N'), char(34)),
	 [LastChanged] = isNull(convert(varchar(50), [MfgCodes].[LastChanged], 21), '\N'),
	 [SAPVendorKey] = concat(char(34), isNull(cast([MfgCodes].[SAPVendorKey] as nvarchar(max)), '\N'), char(34))
from SinglePoint.dbo.MfgCodes