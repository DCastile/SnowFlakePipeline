select
	 [AlertID] = concat(char(34), isNull(replace(cast([REM_Events].[AlertID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [TransactionID] = concat(char(34), isNull(replace(cast([REM_Events].[TransactionID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [TransactionDate] = isNull(convert(varchar(50), [REM_Events].[TransactionDate], 21), '\N'),
	 [serial] = concat(char(34), isNull(replace(cast([REM_Events].[serial] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Type] = concat(char(34), isNull(replace(cast([REM_Events].[Type] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [REM_ID] = concat(char(34), isNull(replace(cast([REM_Events].[REM_ID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [AlertDate] = isNull(convert(varchar(50), [REM_Events].[AlertDate], 21), '\N'),
	 [AlertDescription] = concat(char(34), isNull(replace(cast([REM_Events].[AlertDescription] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [AlertInputData] = concat(char(34), isNull(replace(cast([REM_Events].[AlertInputData] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ContractHeaderID] = concat(char(34), isNull(replace(cast([REM_Events].[ContractHeaderID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ContractLineID] = concat(char(34), isNull(replace(cast([REM_Events].[ContractLineID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [IncidentID] = concat(char(34), isNull(replace(cast([REM_Events].[IncidentID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [EventID] = concat(char(34), isNull(replace(cast([REM_Events].[EventID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Status] = concat(char(34), isNull(replace(cast([REM_Events].[Status] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SubStatus] = concat(char(34), isNull(replace(cast([REM_Events].[SubStatus] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [HandlingOutcome] = concat(char(34), isNull(replace(cast([REM_Events].[HandlingOutcome] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [AcknowledgedByUserID] = concat(char(34), isNull(replace(cast([REM_Events].[AcknowledgedByUserID] as nvarchar(max)), char(34), char(0)), '\N'), char(34))
from Ticketing.dbo.REM_Events