select
	 [MfgCodeID] = isNull(cast([MfgCodes].[MfgCodeID] as varchar(36)), '\N'),
	 [MfgName] = concat(char(34), isNull(replace(cast([MfgCodes].[MfgName] as nvarchar(25)), char(34), char(0)), '\N'), char(34)),
	 [InactiveFlag] = isNull(cast([MfgCodes].[InactiveFlag] as varchar(36)), '\N'),
	 [ChangedByID] = isNull(cast([MfgCodes].[ChangedByID] as varchar(36)), '\N'),
	 [LastChanged] = isNull(convert(varchar(50), [MfgCodes].[LastChanged], 21), '\N'),
	 [SAPVendorKey] = concat(char(34), isNull(replace(cast([MfgCodes].[SAPVendorKey] as nvarchar(50)), char(34), char(0)), '\N'), char(34))
from SinglePoint.dbo.MfgCodes with(nolock)