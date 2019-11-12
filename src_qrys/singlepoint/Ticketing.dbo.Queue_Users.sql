select
	 [AssignmentID] = concat('"', [Queue_Users].[AssignmentID], '"'),
	 [QueueID] = concat('"', [Queue_Users].[QueueID], '"'),
	 [UserID] = concat('"', [Queue_Users].[UserID], '"'),
	 [Role] = concat('"', [Queue_Users].[Role], '"'),
	 [CreateByID] = concat('"', [Queue_Users].[CreateByID], '"'),
	 [CreatedDateTime] = convert(varchar(50), [Queue_Users].[CreatedDateTime], 21)
from Ticketing.dbo.Queue_Users