select
	 [idn] = isNull(quotename([idn], char(34)), '\N'),
	 [DocumentID] = isNull(quotename([DocumentID], char(34)), '\N'),
	 [CustomerName] = isNull(quotename([CustomerName], char(34)), '\N'),
	 [EndCustomerName] = isNull(quotename([EndCustomerName], char(34)), '\N'),
	 [CompanyID] = isNull(quotename([CompanyID], char(34)), '\N'),
	 [OU] = isNull(quotename([OU], char(34)), '\N'),
	 [SalesForceCDKey] = isNull(quotename([SalesForceCDKey], char(34)), '\N'),
	 [ContractID] = isNull(quotename([ContractID], char(34)), '\N'),
	 [Currency] = isNull(quotename([Currency], char(34)), '\N'),
	 [BillCycle] = isNull(quotename([BillCycle], char(34)), '\N'),
	 [ContractStartDate] = isNull(convert(varchar(50), [ContractStartDate], 21), '\N'),
	 [ContractEndDate] = isNull(convert(varchar(50), [ContractEndDate], 21), '\N'),
	 [ContractStartDateString] = isNull(quotename([ContractStartDateString], char(34)), '\N'),
	 [ContractEndDateString] = isNull(quotename([ContractEndDateString], char(34)), '\N'),
	 [SalesRep] = isNull(quotename([SalesRep], char(34)), '\N'),
	 [BillToAddress] = isNull(quotename([BillToAddress], char(34)), '\N'),
	 [BillToAddressID] = isNull(quotename([BillToAddressID], char(34)), '\N'),
	 [CustomerID] = isNull(quotename([CustomerID], char(34)), '\N'),
	 [ContractHeaderID] = isNull(quotename([ContractHeaderID], char(34)), '\N'),
	 [CompanyGuid] = isNull(quotename([CompanyGuid], char(34)), '\N'),
	 [PriceListID] = isNull(quotename([PriceListID], char(34)), '\N'),
	 [DivisionID] = isNull(quotename([DivisionID], char(34)), '\N'),
	 [DistributionChannelID] = isNull(quotename([DistributionChannelID], char(34)), '\N'),
	 [SalesRepID] = isNull(quotename([SalesRepID], char(34)), '\N'),
	 [ContractBillingCycleID] = isNull(quotename([ContractBillingCycleID], char(34)), '\N'),
	 [QuoteHeaderGuid] = isNull(quotename([QuoteHeaderGuid], char(34)), '\N'),
	 [QuoteGuid] = isNull(quotename([QuoteGuid], char(34)), '\N'),
	 [QuoteTypeID] = isNull(quotename([QuoteTypeID], char(34)), '\N'),
	 [QuoteType] = isNull(quotename([QuoteType], char(34)), '\N'),
	 [seq] = isNull(quotename([seq], char(34)), '\N'),
	 [ParentChild] = isNull(quotename([ParentChild], char(34)), '\N'),
	 [ParentSerialNumber] = isNull(quotename([ParentSerialNumber], char(34)), '\N'),
	 [Line] = isNull(quotename([Line], char(34)), '\N'),
	 [LineString] = isNull(quotename([LineString], char(34)), '\N'),
	 [ItemID] = isNull(quotename([ItemID], char(34)), '\N'),
	 [Qty] = isNull(quotename([Qty], char(34)), '\N'),
	 [SerialNumber] = isNull(quotename([SerialNumber], char(34)), '\N'),
	 [AssetName] = isNull(quotename([AssetName], char(34)), '\N'),
	 [SLA] = isNull(quotename([SLA], char(34)), '\N'),
	 [LineStartDate] = isNull(convert(varchar(50), [LineStartDate], 21), '\N'),
	 [LineEndDate] = isNull(convert(varchar(50), [LineEndDate], 21), '\N'),
	 [LineStartDateString] = isNull(quotename([LineStartDateString], char(34)), '\N'),
	 [LineEndDateString] = isNull(quotename([LineEndDateString], char(34)), '\N'),
	 [RateString] = isNull(quotename([RateString], char(34)), '\N'),
	 [Rate] = isNull(quotename([Rate], char(34)), '\N'),
	 [BillAmountString] = isNull(quotename([BillAmountString], char(34)), '\N'),
	 [BillAmount] = isNull(quotename([BillAmount], char(34)), '\N'),
	 [CustomerAddressName] = isNull(quotename([CustomerAddressName], char(34)), '\N'),
	 [AddrName] = isNull(quotename([AddrName], char(34)), '\N'),
	 [Address1] = isNull(quotename([Address1], char(34)), '\N'),
	 [Address2] = isNull(quotename([Address2], char(34)), '\N'),
	 [City] = isNull(quotename([City], char(34)), '\N'),
	 [State] = isNull(quotename([State], char(34)), '\N'),
	 [Zip] = isNull(quotename([Zip], char(34)), '\N'),
	 [CountryName] = isNull(quotename([CountryName], char(34)), '\N'),
	 [ContactName] = isNull(quotename([ContactName], char(34)), '\N'),
	 [ContactPhone] = isNull(quotename([ContactPhone], char(34)), '\N'),
	 [ContactEmail] = isNull(quotename([ContactEmail], char(34)), '\N'),
	 [WhseID] = isNull(quotename([WhseID], char(34)), '\N'),
	 [Subcontractor] = isNull(quotename([Subcontractor], char(34)), '\N'),
	 [SubcontractCost] = isNull(quotename([SubcontractCost], char(34)), '\N'),
	 [SubcontractCostString] = isNull(quotename([SubcontractCostString], char(34)), '\N'),
	 [SubcontractCurrency] = isNull(quotename([SubcontractCurrency], char(34)), '\N'),
	 [PartsSubcontractor] = isNull(quotename([PartsSubcontractor], char(34)), '\N'),
	 [PartsSubcontractCost] = isNull(quotename([PartsSubcontractCost], char(34)), '\N'),
	 [PartsSubcontractCostString] = isNull(quotename([PartsSubcontractCostString], char(34)), '\N'),
	 [PartsSubcontractCurrency] = isNull(quotename([PartsSubcontractCurrency], char(34)), '\N'),
	 [BacklineSubcontractor] = isNull(quotename([BacklineSubcontractor], char(34)), '\N'),
	 [BacklineSubcontractCost] = isNull(quotename([BacklineSubcontractCost], char(34)), '\N'),
	 [BacklineSubcontractCostString] = isNull(quotename([BacklineSubcontractCostString], char(34)), '\N'),
	 [BacklineSubcontractCurrency] = isNull(quotename([BacklineSubcontractCurrency], char(34)), '\N'),
	 [RetainerSubcontractor] = isNull(quotename([RetainerSubcontractor], char(34)), '\N'),
	 [RetainerSubcontractCurrency] = isNull(quotename([RetainerSubcontractCurrency], char(34)), '\N'),
	 [fsl] = isNull(quotename([fsl], char(34)), '\N'),
	 [callHomeProvider] = isNull(quotename([callHomeProvider], char(34)), '\N'),
	 [CreateDate] = isNull(convert(varchar(50), [CreateDate], 21), '\N'),
	 [CreatedByID] = isNull(quotename([CreatedByID], char(34)), '\N'),
	 [ProcessDate] = isNull(convert(varchar(50), [ProcessDate], 21), '\N'),
	 [ItemGuid] = isNull(quotename([ItemGuid], char(34)), '\N'),
	 [SLATermID] = isNull(quotename([SLATermID], char(34)), '\N'),
	 [SLARateMultiplier] = isNull(quotename([SLARateMultiplier], char(34)), '\N'),
	 [CountryCode] = isNull(quotename([CountryCode], char(34)), '\N'),
	 [AddressID] = isNull(quotename([AddressID], char(34)), '\N'),
	 [WarehouseID] = isNull(quotename([WarehouseID], char(34)), '\N'),
	 [ContactID] = isNull(quotename([ContactID], char(34)), '\N'),
	 [newQuoteLineGuid] = isNull(quotename([newQuoteLineGuid], char(34)), '\N'),
	 [newUnitGuid] = isNull(quotename([newUnitGuid], char(34)), '\N'),
	 [QuoteLineGuid] = isNull(quotename([QuoteLineGuid], char(34)), '\N'),
	 [UnitGuid] = isNull(quotename([UnitGuid], char(34)), '\N'),
	 [RateBasis] = isNull(quotename([RateBasis], char(34)), '\N'),
	 [DiscountPct] = isNull(quotename([DiscountPct], char(34)), '\N'),
	 [ServiceDealerID] = isNull(quotename([ServiceDealerID], char(34)), '\N'),
	 [PartsServiceDealerID] = isNull(quotename([PartsServiceDealerID], char(34)), '\N'),
	 [BacklineServiceDealerID] = isNull(quotename([BacklineServiceDealerID], char(34)), '\N'),
	 [Action] = isNull(quotename([Action], char(34)), '\N'),
	 [ContactFName] = isNull(quotename([ContactFName], char(34)), '\N'),
	 [ContactLName] = isNull(quotename([ContactLName], char(34)), '\N'),
	 [oldItemGuid] = isNull(quotename([oldItemGuid], char(34)), '\N'),
	 [configGuid] = isNull(quotename([configGuid], char(34)), '\N'),
	 [bomGuid] = isNull(quotename([bomGuid], char(34)), '\N'),
	 [parentIDN] = isNull(quotename([parentIDN], char(34)), '\N'),
	 [FromAssetHeaderID] = isNull(quotename([FromAssetHeaderID], char(34)), '\N'),
	 [FromContLineID] = isNull(quotename([FromContLineID], char(34)), '\N'),
	 [fslID] = isNull(quotename([fslID], char(34)), '\N'),
	 [CountryMultiplier] = isNull(quotename([CountryMultiplier], char(34)), '\N'),
	 [PriceListRateUsed] = isNull(quotename([PriceListRateUsed], char(34)), '\N'),
	 [isConfigPriced] = isNull(quotename([isConfigPriced], char(34)), '\N'),
	 [LogDate] = isNull(convert(varchar(50), [LogDate], 21), '\N'),
	 [CompleteDate] = isNull(convert(varchar(50), [CompleteDate], 21), '\N'),
	 [ItemDescription] = isNull(quotename([ItemDescription], char(34)), '\N'),
	 [AssetType] = isNull(quotename([AssetType], char(34)), '\N'),
	 [Status] = isNull(quotename([Status], char(34)), '\N'),
	 [ErrorMsg] = isNull(quotename([ErrorMsg], char(34)), '\N'),
	 [keyMap] = isNull(quotename([keyMap], char(34)), '\N'),
	 [quote_id] = isNull(quotename([quote_id], char(34)), '\N'),
	 [contLine] = isNull(quotename([contLine], char(34)), '\N'),
	 [DiscrepGuid] = isNull(quotename([DiscrepGuid], char(34)), '\N'),
	 [DiscrepReasonGuid] = isNull(quotename([DiscrepReasonGuid], char(34)), '\N'),
	 [subContractOnly] = isNull(quotename([subContractOnly], char(34)), '\N'),
	 [subContractOnlyBit] = isNull(quotename([subContractOnlyBit], char(34)), '\N'),
	 [currencyID] = isNull(quotename([currencyID], char(34)), '\N'),
	 [sourceSystem] = isNull(quotename([sourceSystem], char(34)), '\N'),
	 [sourceProc] = isNull(quotename([sourceProc], char(34)), '\N'),
	 [endCustomerID] = isNull(quotename([endCustomerID], char(34)), '\N'),
	 [Outcome] = isNull(quotename([Outcome], char(34)), '\N'),
	 [reqQuoteType] = isNull(quotename([reqQuoteType], char(34)), '\N'),
	 [md5HashHWOnly] = isNull(quotename([md5HashHWOnly], char(34)), '\N')
from SinglePoint.dbo.tqoQuote_ClearView_Extended_Import