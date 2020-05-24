select
	 [MonitorID] = isNull(cast([AssetHeaders_RemoteMonitoring].[MonitorID] as varchar(36)), '\N'),
	 [AssetHeaderID] = isNull(cast([AssetHeaders_RemoteMonitoring].[AssetHeaderID] as varchar(36)), '\N'),
	 [MonitoringProvider] = concat(char(34), isNull(replace(cast([AssetHeaders_RemoteMonitoring].[MonitoringProvider] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [ContractHeaderID] = isNull(cast([AssetHeaders_RemoteMonitoring].[ContractHeaderID] as varchar(36)), '\N'),
	 [ContLineID] = isNull(cast([AssetHeaders_RemoteMonitoring].[ContLineID] as varchar(36)), '\N'),
	 [ContractNumber] = concat(char(34), isNull(replace(cast([AssetHeaders_RemoteMonitoring].[ContractNumber] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [ContractLineNumber] = isNull(cast([AssetHeaders_RemoteMonitoring].[ContractLineNumber] as varchar(36)), '\N'),
	 [ContractStartDate] = isNull(convert(varchar(50), [AssetHeaders_RemoteMonitoring].[ContractStartDate], 21), '\N'),
	 [CreateDate] = isNull(convert(varchar(50), [AssetHeaders_RemoteMonitoring].[CreateDate], 21), '\N'),
	 [TestVerificationDate] = isNull(convert(varchar(50), [AssetHeaders_RemoteMonitoring].[TestVerificationDate], 21), '\N'),
	 [LastAlertDate] = isNull(convert(varchar(50), [AssetHeaders_RemoteMonitoring].[LastAlertDate], 21), '\N'),
	 [AlertCount] = isNull(cast([AssetHeaders_RemoteMonitoring].[AlertCount] as varchar(36)), '\N'),
	 [DecommissionDate] = isNull(convert(varchar(50), [AssetHeaders_RemoteMonitoring].[DecommissionDate], 21), '\N'),
	 [Status] = concat(char(34), isNull(replace(cast([AssetHeaders_RemoteMonitoring].[Status] as nvarchar(50)), char(34), char(0)), '\N'), char(34))
from SinglePoint.dbo.AssetHeaders_RemoteMonitoring with(nolock)