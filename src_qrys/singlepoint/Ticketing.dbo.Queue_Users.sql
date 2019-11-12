select
	 [AssignmentID] = concat(char(34), [Queue_Users].[AssignmentID], char(34)),
	 [QueueID] = concat(char(34), [Queue_Users].[QueueID], char(34)),
	 [UserID] = concat(char(34), [Queue_Users].[UserID], char(34)),
	 [Role] = concat(char(34), [Queue_Users].[Role], char(34)),
	 [CreateByID] = concat(char(34), [Queue_Users].[CreateByID], char(34)),
	 [CreatedDateTime] = convert(varchar(50), [Queue_Users].[CreatedDateTime], 21)
from Ticketing.dbo.Queue_Users