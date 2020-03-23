select
	 [AlertID] = concat(char(34), isNull(replace(cast([REM_Alerts].[AlertID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Serial] = concat(char(34), isNull(replace(cast([REM_Alerts].[Serial] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Status] = concat(char(34), isNull(replace(cast([REM_Alerts].[Status] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SubStatus] = concat(char(34), isNull(replace(cast([REM_Alerts].[SubStatus] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ErrorMessage] = concat(char(34), isNull(replace(cast([REM_Alerts].[ErrorMessage] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SerialNumber] = concat(char(34), isNull(replace(cast([REM_Alerts].[SerialNumber] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Customer] = concat(char(34), isNull(replace(cast([REM_Alerts].[Customer] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Location] = concat(char(34), isNull(replace(cast([REM_Alerts].[Location] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Manufacturer] = concat(char(34), isNull(replace(cast([REM_Alerts].[Manufacturer] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Family] = concat(char(34), isNull(replace(cast([REM_Alerts].[Family] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [CustomerID] = concat(char(34), isNull(replace(cast([REM_Alerts].[CustomerID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [AssetHeaderID] = concat(char(34), isNull(replace(cast([REM_Alerts].[AssetHeaderID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [CreateDate] = isNull(convert(varchar(50), [REM_Alerts].[CreateDate], 21), '\N'),
	 [TransactionID] = concat(char(34), isNull(replace(cast([REM_Alerts].[TransactionID] as nvarchar(max)), char(34), char(0)), '\N'), char(34))
from Ticketing.dbo.REM_Alerts