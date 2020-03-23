select
	 [MonitorID] = concat(char(34), isNull(replace(cast([AssetHeaders_RemoteMonitoring].[MonitorID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [AssetHeaderID] = concat(char(34), isNull(replace(cast([AssetHeaders_RemoteMonitoring].[AssetHeaderID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [MonitoringProvider] = concat(char(34), isNull(replace(cast([AssetHeaders_RemoteMonitoring].[MonitoringProvider] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ContractHeaderID] = concat(char(34), isNull(replace(cast([AssetHeaders_RemoteMonitoring].[ContractHeaderID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ContLineID] = concat(char(34), isNull(replace(cast([AssetHeaders_RemoteMonitoring].[ContLineID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ContractNumber] = concat(char(34), isNull(replace(cast([AssetHeaders_RemoteMonitoring].[ContractNumber] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ContractLineNumber] = concat(char(34), isNull(replace(cast([AssetHeaders_RemoteMonitoring].[ContractLineNumber] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ContractStartDate] = isNull(convert(varchar(50), [AssetHeaders_RemoteMonitoring].[ContractStartDate], 21), '\N'),
	 [CreateDate] = isNull(convert(varchar(50), [AssetHeaders_RemoteMonitoring].[CreateDate], 21), '\N'),
	 [TestVerificationDate] = isNull(convert(varchar(50), [AssetHeaders_RemoteMonitoring].[TestVerificationDate], 21), '\N'),
	 [LastAlertDate] = isNull(convert(varchar(50), [AssetHeaders_RemoteMonitoring].[LastAlertDate], 21), '\N'),
	 [AlertCount] = concat(char(34), isNull(replace(cast([AssetHeaders_RemoteMonitoring].[AlertCount] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [DecommissionDate] = isNull(convert(varchar(50), [AssetHeaders_RemoteMonitoring].[DecommissionDate], 21), '\N'),
	 [Status] = concat(char(34), isNull(replace(cast([AssetHeaders_RemoteMonitoring].[Status] as nvarchar(max)), char(34), char(0)), '\N'), char(34))
from SinglePoint.dbo.AssetHeaders_RemoteMonitoring