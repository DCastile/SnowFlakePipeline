select
	 [QuoteGuid] = concat(char(34), isNull(cast([tqoQuote].[QuoteGuid] as nvarchar(max)), '\N'), char(34)),
	 [QuoteHeaderGuid] = concat(char(34), isNull(cast([tqoQuote].[QuoteHeaderGuid] as nvarchar(max)), '\N'), char(34)),
	 [DiscountPct1] = concat(char(34), isNull(cast([tqoQuote].[DiscountPct1] as nvarchar(max)), '\N'), char(34)),
	 [DiscountDesc1] = concat(char(34), isNull(cast([tqoQuote].[DiscountDesc1] as nvarchar(max)), '\N'), char(34)),
	 [DiscountPct2] = concat(char(34), isNull(cast([tqoQuote].[DiscountPct2] as nvarchar(max)), '\N'), char(34)),
	 [DiscountDesc2] = concat(char(34), isNull(cast([tqoQuote].[DiscountDesc2] as nvarchar(max)), '\N'), char(34)),
	 [DiscountPct3] = concat(char(34), isNull(cast([tqoQuote].[DiscountPct3] as nvarchar(max)), '\N'), char(34)),
	 [DiscountDesc3] = concat(char(34), isNull(cast([tqoQuote].[DiscountDesc3] as nvarchar(max)), '\N'), char(34)),
	 [StartDate] = isNull(convert(varchar(50), [tqoQuote].[StartDate], 21), '\N'),
	 [EndDate] = isNull(convert(varchar(50), [tqoQuote].[EndDate], 21), '\N'),
	 [QuoteRevision] = concat(char(34), isNull(cast([tqoQuote].[QuoteRevision] as nvarchar(max)), '\N'), char(34)),
	 [PrevQuoteGuid] = concat(char(34), isNull(cast([tqoQuote].[PrevQuoteGuid] as nvarchar(max)), '\N'), char(34)),
	 [NextQuoteGuid] = concat(char(34), isNull(cast([tqoQuote].[NextQuoteGuid] as nvarchar(max)), '\N'), char(34)),
	 [ChangedByID] = concat(char(34), isNull(cast([tqoQuote].[ChangedByID] as nvarchar(max)), '\N'), char(34)),
	 [LastChanged] = isNull(convert(varchar(50), [tqoQuote].[LastChanged], 21), '\N'),
	 [CreateByID] = concat(char(34), isNull(cast([tqoQuote].[CreateByID] as nvarchar(max)), '\N'), char(34)),
	 [CreateDate] = isNull(convert(varchar(50), [tqoQuote].[CreateDate], 21), '\N'),
	 [ShowStartDate] = isNull(convert(varchar(50), [tqoQuote].[ShowStartDate], 21), '\N'),
	 [MASContractKey] = concat(char(34), isNull(cast([tqoQuote].[MASContractKey] as nvarchar(max)), '\N'), char(34)),
	 [RevStatusID] = concat(char(34), isNull(cast([tqoQuote].[RevStatusID] as nvarchar(max)), '\N'), char(34)),
	 [RevDesc] = concat(char(34), isNull(cast([tqoQuote].[RevDesc] as nvarchar(max)), '\N'), char(34)),
	 [ShipToMultiFlag] = concat(char(34), isNull(cast([tqoQuote].[ShipToMultiFlag] as nvarchar(max)), '\N'), char(34)),
	 [SLATermsList] = concat(char(34), isNull(cast([tqoQuote].[SLATermsList] as nvarchar(max)), '\N'), char(34)),
	 [HideDraftText] = concat(char(34), isNull(cast([tqoQuote].[HideDraftText] as nvarchar(max)), '\N'), char(34)),
	 [RptStartDate] = isNull(convert(varchar(50), [tqoQuote].[RptStartDate], 21), '\N'),
	 [InvoiceComment] = concat(char(34), isNull(cast([tqoQuote].[InvoiceComment] as nvarchar(max)), '\N'), char(34)),
	 [InvoicedFlag] = concat(char(34), isNull(cast([tqoQuote].[InvoicedFlag] as nvarchar(max)), '\N'), char(34)),
	 [InvoicedByID] = concat(char(34), isNull(cast([tqoQuote].[InvoicedByID] as nvarchar(max)), '\N'), char(34)),
	 [SubVer] = concat(char(34), isNull(cast([tqoQuote].[SubVer] as nvarchar(max)), '\N'), char(34)),
	 [PrivateComment] = concat(char(34), isNull(cast([tqoQuote].[PrivateComment] as nvarchar(max)), '\N'), char(34)),
	 [CancelDate] = isNull(convert(varchar(50), [tqoQuote].[CancelDate], 21), '\N'),
	 [CancelCodeID] = concat(char(34), isNull(cast([tqoQuote].[CancelCodeID] as nvarchar(max)), '\N'), char(34)),
	 [CancelComment] = concat(char(34), isNull(cast([tqoQuote].[CancelComment] as nvarchar(max)), '\N'), char(34)),
	 [HasMirrorContracts] = concat(char(34), isNull(cast([tqoQuote].[HasMirrorContracts] as nvarchar(max)), '\N'), char(34)),
	 [TaxExemptFlag] = concat(char(34), isNull(cast([tqoQuote].[TaxExemptFlag] as nvarchar(max)), '\N'), char(34)),
	 [ShowWrtyRateFlag] = concat(char(34), isNull(cast([tqoQuote].[ShowWrtyRateFlag] as nvarchar(max)), '\N'), char(34)),
	 [CurrencyID] = concat(char(34), isNull(cast([tqoQuote].[CurrencyID] as nvarchar(max)), '\N'), char(34)),
	 [ExchangeRateDate] = isNull(convert(varchar(50), [tqoQuote].[ExchangeRateDate], 21), '\N'),
	 [ExchangeRate] = concat(char(34), isNull(cast([tqoQuote].[ExchangeRate] as nvarchar(max)), '\N'), char(34)),
	 [QuoteWorkFlowStepID] = concat(char(34), isNull(cast([tqoQuote].[QuoteWorkFlowStepID] as nvarchar(max)), '\N'), char(34)),
	 [AssignedToUserID] = concat(char(34), isNull(cast([tqoQuote].[AssignedToUserID] as nvarchar(max)), '\N'), char(34)),
	 [Urgent] = concat(char(34), isNull(cast([tqoQuote].[Urgent] as nvarchar(max)), '\N'), char(34)),
	 [CustomerDeliverableURL] = concat(char(34), isNull(cast([tqoQuote].[CustomerDeliverableURL] as nvarchar(max)), '\N'), char(34)),
	 [SFDC_CustomerDeliverable_ID] = concat(char(34), isNull(cast([tqoQuote].[SFDC_CustomerDeliverable_ID] as nvarchar(max)), '\N'), char(34)),
	 [CustomerDeliverableNumber] = concat(char(34), isNull(cast([tqoQuote].[CustomerDeliverableNumber] as nvarchar(max)), '\N'), char(34)),
	 [Budgetary] = concat(char(34), isNull(cast([tqoQuote].[Budgetary] as nvarchar(max)), '\N'), char(34)),
	 [Requote] = concat(char(34), isNull(cast([tqoQuote].[Requote] as nvarchar(max)), '\N'), char(34)),
	 [QuoteTotal] = concat(char(34), isNull(cast([tqoQuote].[QuoteTotal] as nvarchar(max)), '\N'), char(34)),
	 [QuoteCostConfidence] = concat(char(34), isNull(cast([tqoQuote].[QuoteCostConfidence] as nvarchar(max)), '\N'), char(34)),
	 [QuoteItemSpecificCost] = concat(char(34), isNull(cast([tqoQuote].[QuoteItemSpecificCost] as nvarchar(max)), '\N'), char(34)),
	 [QuoteCostConfidence_Color] = concat(char(34), isNull(cast([tqoQuote].[QuoteCostConfidence_Color] as nvarchar(max)), '\N'), char(34)),
	 [QuoteCostConfidence_Desc] = concat(char(34), isNull(cast([tqoQuote].[QuoteCostConfidence_Desc] as nvarchar(max)), '\N'), char(34)),
	 [AssignedToUserDate] = isNull(convert(varchar(50), [tqoQuote].[AssignedToUserDate], 21), '\N'),
	 [derivedFromQuoteGuid] = concat(char(34), isNull(cast([tqoQuote].[derivedFromQuoteGuid] as nvarchar(max)), '\N'), char(34))
from SinglePoint.dbo.tqoQuote