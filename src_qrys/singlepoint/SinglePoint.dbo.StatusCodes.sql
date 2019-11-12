select
	 [StatusCodeID] = concat(char(34), isNull(cast([StatusCodes].[StatusCodeID] as nvarchar(max)), '\N'), char(34)),
	 [StatusTypeID] = concat(char(34), isNull(cast([StatusCodes].[StatusTypeID] as nvarchar(max)), '\N'), char(34)),
	 [StatusCode] = concat(char(34), isNull(cast([StatusCodes].[StatusCode] as nvarchar(max)), '\N'), char(34)),
	 [StatusDescription] = concat(char(34), isNull(cast([StatusCodes].[StatusDescription] as nvarchar(max)), '\N'), char(34)),
	 [seq] = concat(char(34), isNull(cast([StatusCodes].[seq] as nvarchar(max)), '\N'), char(34)),
	 [InactiveFlag] = concat(char(34), isNull(cast([StatusCodes].[InactiveFlag] as nvarchar(max)), '\N'), char(34)),
	 [ChangedByID] = concat(char(34), isNull(cast([StatusCodes].[ChangedByID] as nvarchar(max)), '\N'), char(34)),
	 [LastChanged] = isNull(convert(varchar(50), [StatusCodes].[LastChanged], 21), '\N'),
	 [SSStatCodeKey] = concat(char(34), isNull(cast([StatusCodes].[SSStatCodeKey] as nvarchar(max)), '\N'), char(34)),
	 [ParentID] = concat(char(34), isNull(cast([StatusCodes].[ParentID] as nvarchar(max)), '\N'), char(34))
from SinglePoint.dbo.StatusCodes