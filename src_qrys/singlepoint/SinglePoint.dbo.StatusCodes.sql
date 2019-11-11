select
	 [StatusCodeID] = quotename([StatusCodes].[StatusCodeID], char(34)),
	 [StatusTypeID] = quotename([StatusCodes].[StatusTypeID], char(34)),
	 [StatusCode] = quotename([StatusCodes].[StatusCode], char(34)),
	 [StatusDescription] = quotename([StatusCodes].[StatusDescription], char(34)),
	 [seq] = quotename([StatusCodes].[seq], char(34)),
	 [InactiveFlag] = quotename([StatusCodes].[InactiveFlag], char(34)),
	 [ChangedByID] = quotename([StatusCodes].[ChangedByID], char(34)),
	 [LastChanged] = convert(varchar(50), [StatusCodes].[LastChanged], 21),
	 [SSStatCodeKey] = quotename([StatusCodes].[SSStatCodeKey], char(34)),
	 [ParentID] = quotename([StatusCodes].[ParentID], char(34))
from SinglePoint.dbo.StatusCodes