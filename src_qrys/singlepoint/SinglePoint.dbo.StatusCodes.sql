select
	 [StatusCodeID] = concat(char(34), [StatusCodes].[StatusCodeID], char(34)),
	 [StatusTypeID] = concat(char(34), [StatusCodes].[StatusTypeID], char(34)),
	 [StatusCode] = concat(char(34), [StatusCodes].[StatusCode], char(34)),
	 [StatusDescription] = concat(char(34), [StatusCodes].[StatusDescription], char(34)),
	 [seq] = concat(char(34), [StatusCodes].[seq], char(34)),
	 [InactiveFlag] = concat(char(34), [StatusCodes].[InactiveFlag], char(34)),
	 [ChangedByID] = concat(char(34), [StatusCodes].[ChangedByID], char(34)),
	 [LastChanged] = convert(varchar(50), [StatusCodes].[LastChanged], 21),
	 [SSStatCodeKey] = concat(char(34), [StatusCodes].[SSStatCodeKey], char(34)),
	 [ParentID] = concat(char(34), [StatusCodes].[ParentID], char(34))
from SinglePoint.dbo.StatusCodes