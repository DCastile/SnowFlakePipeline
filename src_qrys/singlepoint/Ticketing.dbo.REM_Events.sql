select
	 [AlertID] = isNull(cast([REM_Events].[AlertID] as varchar(36)), '\N'),
	 [TransactionID] = isNull(cast([REM_Events].[TransactionID] as varchar(36)), '\N'),
	 [TransactionDate] = isNull(convert(varchar(50), [REM_Events].[TransactionDate], 21), '\N'),
	 [serial] = concat(char(34), isNull(replace(cast([REM_Events].[serial] as nvarchar(400)), char(34), char(0)), '\N'), char(34)),
	 [Type] = concat(char(34), isNull(replace(cast([REM_Events].[Type] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [REM_ID] = concat(char(34), isNull(replace(cast([REM_Events].[REM_ID] as nvarchar(100)), char(34), char(0)), '\N'), char(34)),
	 [AlertDate] = isNull(convert(varchar(50), [REM_Events].[AlertDate], 21), '\N'),
	 [AlertDescription] = concat(char(34), isNull(replace(cast([REM_Events].[AlertDescription] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [AlertInputData] = concat(char(34), isNull(replace(cast([REM_Events].[AlertInputData] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ContractHeaderID] = isNull(cast([REM_Events].[ContractHeaderID] as varchar(36)), '\N'),
	 [ContractLineID] = isNull(cast([REM_Events].[ContractLineID] as varchar(36)), '\N'),
	 [IncidentID] = isNull(cast([REM_Events].[IncidentID] as varchar(36)), '\N'),
	 [EventID] = isNull(cast([REM_Events].[EventID] as varchar(36)), '\N'),
	 [Status] = concat(char(34), isNull(replace(cast([REM_Events].[Status] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [SubStatus] = concat(char(34), isNull(replace(cast([REM_Events].[SubStatus] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [HandlingOutcome] = concat(char(34), isNull(replace(cast([REM_Events].[HandlingOutcome] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [AcknowledgedByUserID] = isNull(cast([REM_Events].[AcknowledgedByUserID] as varchar(36)), '\N')
from Ticketing.dbo.REM_Events with(nolock)