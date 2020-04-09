select
	 [StatusCodeID] = isNull(cast([StatusCodes].[StatusCodeID] as varchar(36)), '\N'),
	 [StatusTypeID] = isNull(cast([StatusCodes].[StatusTypeID] as varchar(36)), '\N'),
	 [StatusCode] = concat(char(34), isNull(replace(cast([StatusCodes].[StatusCode] as nvarchar(20)), char(34), char(0)), '\N'), char(34)),
	 [StatusDescription] = concat(char(34), isNull(replace(cast([StatusCodes].[StatusDescription] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [seq] = isNull(cast([StatusCodes].[seq] as varchar(36)), '\N'),
	 [InactiveFlag] = isNull(cast([StatusCodes].[InactiveFlag] as varchar(36)), '\N'),
	 [ChangedByID] = isNull(cast([StatusCodes].[ChangedByID] as varchar(36)), '\N'),
	 [LastChanged] = isNull(convert(varchar(50), [StatusCodes].[LastChanged], 21), '\N'),
	 [SSStatCodeKey] = isNull(cast([StatusCodes].[SSStatCodeKey] as varchar(36)), '\N'),
	 [ParentID] = isNull(cast([StatusCodes].[ParentID] as varchar(36)), '\N')
from SinglePoint.dbo.StatusCodes