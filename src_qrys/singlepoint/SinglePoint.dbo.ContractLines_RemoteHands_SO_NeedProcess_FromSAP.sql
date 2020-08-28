select
	 [SAP_Contract_Key] = concat(char(34), isNull(replace(cast([ContractLines_RemoteHands_SO_NeedProcess_FromSAP].[SAP_Contract_Key] as nvarchar(10)), char(34), char(0)), '\N'), char(34)),
	 [ServiceOrder] = concat(char(34), isNull(replace(cast([ContractLines_RemoteHands_SO_NeedProcess_FromSAP].[ServiceOrder] as nvarchar(12)), char(34), char(0)), '\N'), char(34)),
	 [CostTotal] = isNull(cast([ContractLines_RemoteHands_SO_NeedProcess_FromSAP].[CostTotal] as varchar(36)), '\N'),
	 [DMRTotal] = isNull(cast([ContractLines_RemoteHands_SO_NeedProcess_FromSAP].[DMRTotal] as varchar(36)), '\N'),
	 [InvcTotal] = isNull(cast([ContractLines_RemoteHands_SO_NeedProcess_FromSAP].[InvcTotal] as varchar(36)), '\N'),
	 [RHTypeCode] = concat(char(34), isNull(replace(cast([ContractLines_RemoteHands_SO_NeedProcess_FromSAP].[RHTypeCode] as nvarchar(4)), char(34), char(0)), '\N'), char(34)),
	 [RHType] = concat(char(34), isNull(replace(cast([ContractLines_RemoteHands_SO_NeedProcess_FromSAP].[RHType] as nvarchar(11)), char(34), char(0)), '\N'), char(34)),
	 [CreateDate] = isNull(convert(varchar(50), [ContractLines_RemoteHands_SO_NeedProcess_FromSAP].[CreateDate], 21), '\N'),
	 [ContLineAmt] = isNull(cast([ContractLines_RemoteHands_SO_NeedProcess_FromSAP].[ContLineAmt] as varchar(36)), '\N'),
	 [DMRNumber] = concat(char(34), isNull(replace(cast([ContractLines_RemoteHands_SO_NeedProcess_FromSAP].[DMRNumber] as nvarchar(10)), char(34), char(0)), '\N'), char(34)),
	 [InvcNumber] = concat(char(34), isNull(replace(cast([ContractLines_RemoteHands_SO_NeedProcess_FromSAP].[InvcNumber] as nvarchar(10)), char(34), char(0)), '\N'), char(34)),
	 [InvoiceStatus] = concat(char(34), isNull(replace(cast([ContractLines_RemoteHands_SO_NeedProcess_FromSAP].[InvoiceStatus] as nvarchar(200)), char(34), char(0)), '\N'), char(34)),
	 [LogDate] = isNull(convert(varchar(50), [ContractLines_RemoteHands_SO_NeedProcess_FromSAP].[LogDate], 21), '\N'),
	 [idn] = isNull(cast([ContractLines_RemoteHands_SO_NeedProcess_FromSAP].[idn] as varchar(36)), '\N'),
	 [ContractHeaderID] = isNull(cast([ContractLines_RemoteHands_SO_NeedProcess_FromSAP].[ContractHeaderID] as varchar(36)), '\N'),
	 [SelectByUserID] = isNull(cast([ContractLines_RemoteHands_SO_NeedProcess_FromSAP].[SelectByUserID] as varchar(36)), '\N'),
	 [CheckFlag] = isNull(cast([ContractLines_RemoteHands_SO_NeedProcess_FromSAP].[CheckFlag] as varchar(36)), '\N')
from SinglePoint.dbo.ContractLines_RemoteHands_SO_NeedProcess_FromSAP with(nolock)