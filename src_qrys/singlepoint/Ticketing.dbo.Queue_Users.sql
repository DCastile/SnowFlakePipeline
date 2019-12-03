select
	 [AssignmentID] = concat(char(34), isNull(replace(cast([Queue_Users].[AssignmentID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [QueueID] = concat(char(34), isNull(replace(cast([Queue_Users].[QueueID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [UserID] = concat(char(34), isNull(replace(cast([Queue_Users].[UserID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Role] = concat(char(34), isNull(replace(cast([Queue_Users].[Role] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [CreateByID] = concat(char(34), isNull(replace(cast([Queue_Users].[CreateByID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [CreatedDateTime] = isNull(convert(varchar(50), [Queue_Users].[CreatedDateTime], 21), '\N')
from Ticketing.dbo.Queue_Users with(nolock)