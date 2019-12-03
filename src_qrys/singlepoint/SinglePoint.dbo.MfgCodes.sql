select
	 [MfgCodeID] = concat(char(34), isNull(replace(cast([MfgCodes].[MfgCodeID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [MfgName] = concat(char(34), isNull(replace(cast([MfgCodes].[MfgName] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [InactiveFlag] = concat(char(34), isNull(replace(cast([MfgCodes].[InactiveFlag] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ChangedByID] = concat(char(34), isNull(replace(cast([MfgCodes].[ChangedByID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [LastChanged] = isNull(convert(varchar(50), [MfgCodes].[LastChanged], 21), '\N'),
	 [SAPVendorKey] = concat(char(34), isNull(replace(cast([MfgCodes].[SAPVendorKey] as nvarchar(max)), char(34), char(0)), '\N'), char(34))
from SinglePoint.dbo.MfgCodes with(nolock)