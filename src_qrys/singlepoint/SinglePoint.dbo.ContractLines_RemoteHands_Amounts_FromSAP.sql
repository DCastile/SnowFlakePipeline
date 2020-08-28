select
	 [SAP_Contract_key] = concat(char(34), isNull(replace(cast([ContractLines_RemoteHands_Amounts_FromSAP].[SAP_Contract_key] as nvarchar(3998)), char(34), char(0)), '\N'), char(34)),
	 [sPContract] = concat(char(34), isNull(replace(cast([ContractLines_RemoteHands_Amounts_FromSAP].[sPContract] as nvarchar(35)), char(34), char(0)), '\N'), char(34)),
	 [TargetValue] = isNull(cast([ContractLines_RemoteHands_Amounts_FromSAP].[TargetValue] as varchar(36)), '\N'),
	 [Line] = isNull(cast([ContractLines_RemoteHands_Amounts_FromSAP].[Line] as varchar(36)), '\N'),
	 [RemainingAmount] = isNull(cast([ContractLines_RemoteHands_Amounts_FromSAP].[RemainingAmount] as varchar(36)), '\N'),
	 [LogDate] = isNull(convert(varchar(50), [ContractLines_RemoteHands_Amounts_FromSAP].[LogDate], 21), '\N'),
	 [idn] = isNull(cast([ContractLines_RemoteHands_Amounts_FromSAP].[idn] as varchar(36)), '\N'),
	 [ContractHeaderID] = isNull(cast([ContractLines_RemoteHands_Amounts_FromSAP].[ContractHeaderID] as varchar(36)), '\N')
from SinglePoint.dbo.ContractLines_RemoteHands_Amounts_FromSAP with(nolock)