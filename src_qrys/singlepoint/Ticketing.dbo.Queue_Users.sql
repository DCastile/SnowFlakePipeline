select
	 [AssignmentID] = isNull(cast([Queue_Users].[AssignmentID] as varchar(36)), '\N'),
	 [QueueID] = isNull(cast([Queue_Users].[QueueID] as varchar(36)), '\N'),
	 [UserID] = isNull(cast([Queue_Users].[UserID] as varchar(36)), '\N'),
	 [Role] = concat(char(34), isNull(replace(cast([Queue_Users].[Role] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [CreateByID] = isNull(cast([Queue_Users].[CreateByID] as varchar(36)), '\N'),
	 [CreatedDateTime] = isNull(convert(varchar(50), [Queue_Users].[CreatedDateTime], 21), '\N')
from Ticketing.dbo.Queue_Users