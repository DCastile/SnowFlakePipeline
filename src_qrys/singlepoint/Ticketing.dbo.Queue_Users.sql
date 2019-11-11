select
	 [AssignmentID] = quotename([Queue_Users].[AssignmentID], char(34)),
	 [QueueID] = quotename([Queue_Users].[QueueID], char(34)),
	 [UserID] = quotename([Queue_Users].[UserID], char(34)),
	 [Role] = quotename([Queue_Users].[Role], char(34)),
	 [CreateByID] = quotename([Queue_Users].[CreateByID], char(34)),
	 [CreatedDateTime] = convert(varchar(50), [Queue_Users].[CreatedDateTime], 21)
from Ticketing.dbo.Queue_Users