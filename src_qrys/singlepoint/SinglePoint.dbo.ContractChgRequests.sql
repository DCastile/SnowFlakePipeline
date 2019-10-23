select
	 [ContractChgRequestID] = isNull(quotename([ContractChgRequestID], char(34)), '\N'),
	 [ContractHeaderID] = isNull(quotename([ContractHeaderID], char(34)), '\N'),
	 [ContLineID] = isNull(quotename([ContLineID], char(34)), '\N'),
	 [AssetHeaderID] = isNull(quotename([AssetHeaderID], char(34)), '\N'),
	 [NewLine] = isNull(quotename([NewLine], char(34)), '\N'),
	 [ContractChgReqTypeID] = isNull(quotename([ContractChgReqTypeID], char(34)), '\N'),
	 [StatusCodeID] = isNull(quotename([StatusCodeID], char(34)), '\N'),
	 [AssetTypeID] = isNull(quotename([AssetTypeID], char(34)), '\N'),
	 [MfgCodeID] = isNull(quotename([MfgCodeID], char(34)), '\N'),
	 [ModelCodeID] = isNull(quotename([ModelCodeID], char(34)), '\N'),
	 [SerialNumber] = isNull(quotename([SerialNumber], char(34)), '\N'),
	 [AssetName] = isNull(quotename([AssetName], char(34)), '\N'),
	 [AddressID] = isNull(quotename([AddressID], char(34)), '\N'),
	 [ReqStartDate] = isNull(convert(varchar(50), [ReqStartDate], 21), '\N'),
	 [ReqEndDate] = isNull(convert(varchar(50), [ReqEndDate], 21), '\N'),
	 [Comment] = isNull(quotename([Comment], char(34)), '\N'),
	 [SMSComment] = isNull(quotename([SMSComment], char(34)), '\N'),
	 [ContactID] = isNull(quotename([ContactID], char(34)), '\N'),
	 [ChangeByID] = isNull(quotename([ChangeByID], char(34)), '\N'),
	 [ChangeDate] = isNull(convert(varchar(50), [ChangeDate], 21), '\N'),
	 [CreateByID] = isNull(quotename([CreateByID], char(34)), '\N'),
	 [CreateDate] = isNull(convert(varchar(50), [CreateDate], 21), '\N'),
	 [SLATermID] = isNull(quotename([SLATermID], char(34)), '\N'),
	 [OtherMfgCode] = isNull(quotename([OtherMfgCode], char(34)), '\N'),
	 [OtherModelCode] = isNull(quotename([OtherModelCode], char(34)), '\N'),
	 [QuoteLineGuid] = isNull(quotename([QuoteLineGuid], char(34)), '\N'),
	 [DiscrepGuid] = isNull(quotename([DiscrepGuid], char(34)), '\N'),
	 [LikeAssetHeaderID] = isNull(quotename([LikeAssetHeaderID], char(34)), '\N'),
	 [SelectFlag] = isNull(quotename([SelectFlag], char(34)), '\N'),
	 [SelectByID] = isNull(quotename([SelectByID], char(34)), '\N'),
	 [SelectDate] = isNull(convert(varchar(50), [SelectDate], 21), '\N'),
	 [AssetDescription] = isNull(quotename([AssetDescription], char(34)), '\N'),
	 [HistoryFlag] = isNull(quotename([HistoryFlag], char(34)), '\N'),
	 [BatchID] = isNull(quotename([BatchID], char(34)), '\N'),
	 [NoBidFlag] = isNull(quotename([NoBidFlag], char(34)), '\N'),
	 [RateChange] = isNull(quotename([RateChange], char(34)), '\N'),
	 [DiscrepFlag] = isNull(quotename([DiscrepFlag], char(34)), '\N'),
	 [RateChangeSource] = isNull(quotename([RateChangeSource], char(34)), '\N'),
	 [ReqConfig] = isNull(quotename([ReqConfig], char(34)), '\N'),
	 [ReqRate] = isNull(quotename([ReqRate], char(34)), '\N'),
	 [ReqLineStartDate] = isNull(convert(varchar(50), [ReqLineStartDate], 21), '\N'),
	 [ItemGuid] = isNull(quotename([ItemGuid], char(34)), '\N'),
	 [ReqServiceDealerID] = isNull(quotename([ReqServiceDealerID], char(34)), '\N'),
	 [ReqSubcontractCost] = isNull(quotename([ReqSubcontractCost], char(34)), '\N'),
	 [ReqItemGuid] = isNull(quotename([ReqItemGuid], char(34)), '\N'),
	 [ReqWrtyEndDate] = isNull(convert(varchar(50), [ReqWrtyEndDate], 21), '\N'),
	 [ReqMASWrtyRate] = isNull(quotename([ReqMASWrtyRate], char(34)), '\N'),
	 [ReqSerialNumber] = isNull(quotename([ReqSerialNumber], char(34)), '\N'),
	 [ReqRemoveServiceDealer] = isNull(quotename([ReqRemoveServiceDealer], char(34)), '\N'),
	 [NewAssetFlag] = isNull(quotename([NewAssetFlag], char(34)), '\N'),
	 [ReinstateAssetFlag] = isNull(quotename([ReinstateAssetFlag], char(34)), '\N'),
	 [chgReqIcon] = isNull(quotename([chgReqIcon], char(34)), '\N'),
	 [DerivedFromChgReqID] = isNull(quotename([DerivedFromChgReqID], char(34)), '\N'),
	 [ReqPartsServiceDealerID] = isNull(quotename([ReqPartsServiceDealerID], char(34)), '\N'),
	 [ReqBacklineServiceDealerID] = isNull(quotename([ReqBacklineServiceDealerID], char(34)), '\N'),
	 [ReqFslID] = isNull(quotename([ReqFslID], char(34)), '\N'),
	 [ReqBacklineSubcontractCost] = isNull(quotename([ReqBacklineSubcontractCost], char(34)), '\N'),
	 [ReqCallHomeProviderID] = isNull(quotename([ReqCallHomeProviderID], char(34)), '\N'),
	 [ReqRemovePartsServiceDealer] = isNull(quotename([ReqRemovePartsServiceDealer], char(34)), '\N'),
	 [ReqRemoveBacklineServiceDealer] = isNull(quotename([ReqRemoveBacklineServiceDealer], char(34)), '\N'),
	 [ReqRemoveFsl] = isNull(quotename([ReqRemoveFsl], char(34)), '\N'),
	 [ReqRemoveCallHomeProvider] = isNull(quotename([ReqRemoveCallHomeProvider], char(34)), '\N'),
	 [ReqRetainerServiceDealerID] = isNull(quotename([ReqRetainerServiceDealerID], char(34)), '\N'),
	 [ReqSoftwareServiceDealerID] = isNull(quotename([ReqSoftwareServiceDealerID], char(34)), '\N'),
	 [reqRemoveRetainerServiceDealerID] = isNull(quotename([reqRemoveRetainerServiceDealerID], char(34)), '\N'),
	 [reqPartsSubcontractCost] = isNull(quotename([reqPartsSubcontractCost], char(34)), '\N'),
	 [reqServiceDealerCurrency] = isNull(quotename([reqServiceDealerCurrency], char(34)), '\N'),
	 [reqPartsServiceDealerCurrency] = isNull(quotename([reqPartsServiceDealerCurrency], char(34)), '\N'),
	 [reqBacklineServiceDealerCurrency] = isNull(quotename([reqBacklineServiceDealerCurrency], char(34)), '\N'),
	 [reqRetainerServiceDealerCurrency] = isNull(quotename([reqRetainerServiceDealerCurrency], char(34)), '\N')
from SinglePoint.dbo.ContractChgRequests