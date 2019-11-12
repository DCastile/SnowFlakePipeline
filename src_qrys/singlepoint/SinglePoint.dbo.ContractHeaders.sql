select
	 [ContractHeaderID] = concat(char(34), [ContractHeaders].[ContractHeaderID], char(34)),
	 [CustomerID] = concat(char(34), [ContractHeaders].[CustomerID], char(34)),
	 [ContractID] = concat(char(34), [ContractHeaders].[ContractID], char(34)),
	 [SMSContractKey] = concat(char(34), [ContractHeaders].[SMSContractKey], char(34)),
	 [ContBillingCycleID] = concat(char(34), [ContractHeaders].[ContBillingCycleID], char(34)),
	 [Description] = concat(char(34), [ContractHeaders].[Description], char(34)),
	 [SupplierID] = concat(char(34), [ContractHeaders].[SupplierID], char(34)),
	 [ContractStartDate] = convert(varchar(50), [ContractHeaders].[ContractStartDate], 21),
	 [ContractStopDate] = convert(varchar(50), [ContractHeaders].[ContractStopDate], 21),
	 [EstimatedValue] = concat(char(34), [ContractHeaders].[EstimatedValue], char(34)),
	 [DiscountPct1] = concat(char(34), [ContractHeaders].[DiscountPct1], char(34)),
	 [DiscountDesc1] = concat(char(34), [ContractHeaders].[DiscountDesc1], char(34)),
	 [DiscountPct2] = concat(char(34), [ContractHeaders].[DiscountPct2], char(34)),
	 [DiscountDesc2] = concat(char(34), [ContractHeaders].[DiscountDesc2], char(34)),
	 [DiscountPct3] = concat(char(34), [ContractHeaders].[DiscountPct3], char(34)),
	 [DiscountDesc3] = concat(char(34), [ContractHeaders].[DiscountDesc3], char(34)),
	 [RenewalAlertDate] = convert(varchar(50), [ContractHeaders].[RenewalAlertDate], 21),
	 [PONum] = concat(char(34), [ContractHeaders].[PONum], char(34)),
	 [POAmt] = concat(char(34), [ContractHeaders].[POAmt], char(34)),
	 [ChangeByID] = concat(char(34), [ContractHeaders].[ChangeByID], char(34)),
	 [InactiveDate] = convert(varchar(50), [ContractHeaders].[InactiveDate], 21),
	 [ChangeDate] = convert(varchar(50), [ContractHeaders].[ChangeDate], 21),
	 [CreateByID] = concat(char(34), [ContractHeaders].[CreateByID], char(34)),
	 [CreateDate] = convert(varchar(50), [ContractHeaders].[CreateDate], 21),
	 [ContractStatusID] = concat(char(34), [ContractHeaders].[ContractStatusID], char(34)),
	 [RenewalStatusID] = concat(char(34), [ContractHeaders].[RenewalStatusID], char(34)),
	 [SLATermID] = concat(char(34), [ContractHeaders].[SLATermID], char(34)),
	 [DefaultAlertContactID] = concat(char(34), [ContractHeaders].[DefaultAlertContactID], char(34)),
	 [StartBillingDate] = convert(varchar(50), [ContractHeaders].[StartBillingDate], 21),
	 [PartnerPricingFlag] = concat(char(34), [ContractHeaders].[PartnerPricingFlag], char(34)),
	 [PartnerID] = concat(char(34), [ContractHeaders].[PartnerID], char(34)),
	 [PublicFlag] = concat(char(34), [ContractHeaders].[PublicFlag], char(34)),
	 [NoPricingFlag] = concat(char(34), [ContractHeaders].[NoPricingFlag], char(34)),
	 [CurrentRevision] = concat(char(34), [ContractHeaders].[CurrentRevision], char(34)),
	 [BillToAddressID] = concat(char(34), [ContractHeaders].[BillToAddressID], char(34)),
	 [ShipToAddressID] = concat(char(34), [ContractHeaders].[ShipToAddressID], char(34)),
	 [MASSrvTypeKey] = concat(char(34), [ContractHeaders].[MASSrvTypeKey], char(34)),
	 [ContractBilledThru] = convert(varchar(50), [ContractHeaders].[ContractBilledThru], 21),
	 [POEndDate] = convert(varchar(50), [ContractHeaders].[POEndDate], 21),
	 [SubVersion] = concat(char(34), [ContractHeaders].[SubVersion], char(34)),
	 [SourceSystem] = concat(char(34), [ContractHeaders].[SourceSystem], char(34)),
	 [SourceCompany] = concat(char(34), [ContractHeaders].[SourceCompany], char(34)),
	 [SourceProc] = concat(char(34), [ContractHeaders].[SourceProc], char(34)),
	 [MASCompanyID] = concat(char(34), [ContractHeaders].[MASCompanyID], char(34)),
	 [SAP_Contract_Key] = concat(char(34), [ContractHeaders].[SAP_Contract_Key], char(34)),
	 [Currency] = concat(char(34), [ContractHeaders].[Currency], char(34)),
	 [isAutoRenewable] = concat(char(34), [ContractHeaders].[isAutoRenewable], char(34)),
	 [CompanyGuid] = concat(char(34), [ContractHeaders].[CompanyGuid], char(34)),
	 [PriceListID] = concat(char(34), [ContractHeaders].[PriceListID], char(34)),
	 [DivisionID] = concat(char(34), [ContractHeaders].[DivisionID], char(34)),
	 [DistributionChannelID] = concat(char(34), [ContractHeaders].[DistributionChannelID], char(34)),
	 [ActualContractStartDate] = convert(varchar(50), [ContractHeaders].[ActualContractStartDate], 21),
	 [ActualContractStopDate] = convert(varchar(50), [ContractHeaders].[ActualContractStopDate], 21),
	 [ContractCancelDate] = convert(varchar(50), [ContractHeaders].[ContractCancelDate], 21),
	 [ActualContractCancelDate] = convert(varchar(50), [ContractHeaders].[ActualContractCancelDate], 21),
	 [MirrorParentContractHeaderID] = concat(char(34), [ContractHeaders].[MirrorParentContractHeaderID], char(34)),
	 [CreatedFromQuoteGuid] = concat(char(34), [ContractHeaders].[CreatedFromQuoteGuid], char(34)),
	 [CancelReasonCode] = concat(char(34), [ContractHeaders].[CancelReasonCode], char(34)),
	 [GracePeriodStartDate] = convert(varchar(50), [ContractHeaders].[GracePeriodStartDate], 21),
	 [GracePeriodEndDate] = convert(varchar(50), [ContractHeaders].[GracePeriodEndDate], 21),
	 [GracePeriodSchedEndDate] = convert(varchar(50), [ContractHeaders].[GracePeriodSchedEndDate], 21),
	 [OrigActualContractStopDate] = convert(varchar(50), [ContractHeaders].[OrigActualContractStopDate], 21),
	 [OrigContractStopDate] = convert(varchar(50), [ContractHeaders].[OrigContractStopDate], 21),
	 [GracePeriodSentToSAPDate] = convert(varchar(50), [ContractHeaders].[GracePeriodSentToSAPDate], 21),
	 [SAP_SyncAck_DateTime] = convert(varchar(50), [ContractHeaders].[SAP_SyncAck_DateTime], 21),
	 [ServicedBy] = concat(char(34), [ContractHeaders].[ServicedBy], char(34)),
	 [ContractSalesRepID] = concat(char(34), [ContractHeaders].[ContractSalesRepID], char(34)),
	 [LastChangedByQuoteRevID] = concat(char(34), [ContractHeaders].[LastChangedByQuoteRevID], char(34)),
	 [LastChangedByQuoteGuid] = concat(char(34), [ContractHeaders].[LastChangedByQuoteGuid], char(34)),
	 [TaxExemptFlag] = concat(char(34), [ContractHeaders].[TaxExemptFlag], char(34)),
	 [origcontractstartdate] = convert(varchar(50), [ContractHeaders].[origcontractstartdate], 21),
	 [origactualcontractstartdate] = convert(varchar(50), [ContractHeaders].[origactualcontractstartdate], 21),
	 [ContractTypeID] = concat(char(34), [ContractHeaders].[ContractTypeID], char(34)),
	 [ExchangeRate] = concat(char(34), [ContractHeaders].[ExchangeRate], char(34)),
	 [ExchangeRateDate] = convert(varchar(50), [ContractHeaders].[ExchangeRateDate], 21),
	 [IsSmsContract] = concat(char(34), [ContractHeaders].[IsSmsContract], char(34)),
	 [IsOnServiceHold] = concat(char(34), [ContractHeaders].[IsOnServiceHold], char(34)),
	 [Oracle_ID] = concat(char(34), [ContractHeaders].[Oracle_ID], char(34)),
	 [Oracle_SyncAck_DateTime] = convert(varchar(50), [ContractHeaders].[Oracle_SyncAck_DateTime], 21),
	 [Oracle_ContractStatus] = concat(char(34), [ContractHeaders].[Oracle_ContractStatus], char(34)),
	 [SupportProvider] = concat(char(34), [ContractHeaders].[SupportProvider], char(34)),
	 [SAP_Order_Reason] = concat(char(34), [ContractHeaders].[SAP_Order_Reason], char(34)),
	 [RepricingDate] = convert(varchar(50), [ContractHeaders].[RepricingDate], 21),
	 [PaymentTermID] = concat(char(34), [ContractHeaders].[PaymentTermID], char(34))
from SinglePoint.dbo.ContractHeaders