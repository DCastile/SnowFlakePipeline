select
	 [oldAssetHeaderID] = isNull(quotename([oldAssetHeaderID], char(34)), '\N'),
	 [newAssetHeaderID] = isNull(quotename([newAssetHeaderID], char(34)), '\N'),
	 [incidentID] = isNull(quotename([incidentID], char(34)), '\N'),
	 [LogDate] = isNull(convert(varchar(50), [LogDate], 21), '\N'),
	 [UserID] = isNull(quotename([UserID], char(34)), '\N')
from SinglePoint.dbo.AssetHeaders_UnitSwap_Log