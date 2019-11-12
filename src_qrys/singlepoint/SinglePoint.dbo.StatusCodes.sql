select
	 [StatusCodeID] = concat('"', [StatusCodes].[StatusCodeID], '"'),
	 [StatusTypeID] = concat('"', [StatusCodes].[StatusTypeID], '"'),
	 [StatusCode] = concat('"', [StatusCodes].[StatusCode], '"'),
	 [StatusDescription] = concat('"', [StatusCodes].[StatusDescription], '"'),
	 [seq] = concat('"', [StatusCodes].[seq], '"'),
	 [InactiveFlag] = concat('"', [StatusCodes].[InactiveFlag], '"'),
	 [ChangedByID] = concat('"', [StatusCodes].[ChangedByID], '"'),
	 [LastChanged] = convert(varchar(50), [StatusCodes].[LastChanged], 21),
	 [SSStatCodeKey] = concat('"', [StatusCodes].[SSStatCodeKey], '"'),
	 [ParentID] = concat('"', [StatusCodes].[ParentID], '"')
from SinglePoint.dbo.StatusCodes