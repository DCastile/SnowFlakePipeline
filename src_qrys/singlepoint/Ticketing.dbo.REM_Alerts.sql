select
	 [AlertID] = isNull(cast([REM_Alerts].[AlertID] as varchar(36)), '\N'),
	 [Serial] = concat(char(34), isNull(replace(cast([REM_Alerts].[Serial] as nvarchar(400)), char(34), char(0)), '\N'), char(34)),
	 [Status] = concat(char(34), isNull(replace(cast([REM_Alerts].[Status] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [SubStatus] = concat(char(34), isNull(replace(cast([REM_Alerts].[SubStatus] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [ErrorMessage] = concat(char(34), isNull(replace(cast([REM_Alerts].[ErrorMessage] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SerialNumber] = concat(char(34), isNull(replace(cast([REM_Alerts].[SerialNumber] as nvarchar(255)), char(34), char(0)), '\N'), char(34)),
	 [Customer] = concat(char(34), isNull(replace(cast([REM_Alerts].[Customer] as nvarchar(1000)), char(34), char(0)), '\N'), char(34)),
	 [Location] = concat(char(34), isNull(replace(cast([REM_Alerts].[Location] as nvarchar(1000)), char(34), char(0)), '\N'), char(34)),
	 [Manufacturer] = concat(char(34), isNull(replace(cast([REM_Alerts].[Manufacturer] as nvarchar(1000)), char(34), char(0)), '\N'), char(34)),
	 [Family] = concat(char(34), isNull(replace(cast([REM_Alerts].[Family] as nvarchar(1000)), char(34), char(0)), '\N'), char(34)),
	 [CustomerID] = isNull(cast([REM_Alerts].[CustomerID] as varchar(36)), '\N'),
	 [AssetHeaderID] = isNull(cast([REM_Alerts].[AssetHeaderID] as varchar(36)), '\N'),
	 [CreateDate] = isNull(convert(varchar(50), [REM_Alerts].[CreateDate], 21), '\N'),
	 [TransactionID] = isNull(cast([REM_Alerts].[TransactionID] as varchar(36)), '\N')
from Ticketing.dbo.REM_Alerts with(nolock)