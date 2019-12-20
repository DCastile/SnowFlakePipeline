select
	 [StatusCodeID] = concat(char(34), isNull(replace(cast([StatusCodes].[StatusCodeID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [StatusTypeID] = concat(char(34), isNull(replace(cast([StatusCodes].[StatusTypeID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [StatusCode] = concat(char(34), isNull(replace(cast([StatusCodes].[StatusCode] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [StatusDescription] = concat(char(34), isNull(replace(cast([StatusCodes].[StatusDescription] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [seq] = concat(char(34), isNull(replace(cast([StatusCodes].[seq] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [InactiveFlag] = concat(char(34), isNull(replace(cast([StatusCodes].[InactiveFlag] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ChangedByID] = concat(char(34), isNull(replace(cast([StatusCodes].[ChangedByID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [LastChanged] = isNull(convert(varchar(50), [StatusCodes].[LastChanged], 21), '\N'),
	 [SSStatCodeKey] = concat(char(34), isNull(replace(cast([StatusCodes].[SSStatCodeKey] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ParentID] = concat(char(34), isNull(replace(cast([StatusCodes].[ParentID] as nvarchar(max)), char(34), char(0)), '\N'), char(34))
from SinglePoint.dbo.StatusCodes