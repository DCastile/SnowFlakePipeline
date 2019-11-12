select
	 [ContLineID] = concat('"', [ContractLines].[ContLineID], '"'),
	 [ContractHeaderID] = concat('"', [ContractLines].[ContractHeaderID], '"'),
	 [Line] = concat('"', [ContractLines].[Line], '"'),
	 [AssetHeaderID] = concat('"', [ContractLines].[AssetHeaderID], '"'),
	 [SMSContLineKey] = concat('"', [ContractLines].[SMSContLineKey], '"'),
	 [StatusCodeID] = concat('"', [ContractLines].[StatusCodeID], '"'),
	 [ContLineStartDate] = convert(varchar(50), [ContractLines].[ContLineStartDate], 21),
	 [ContLineEndDate] = convert(varchar(50), [ContractLines].[ContLineEndDate], 21),
	 [ContLineAlertDate] = convert(varchar(50), [ContractLines].[ContLineAlertDate], 21),
	 [ContLineAlertContactID] = concat('"', [ContractLines].[ContLineAlertContactID], '"'),
	 [ContLinePeriodAmt] = concat('"', [ContractLines].[ContLinePeriodAmt], '"'),
	 [InactiveDate] = convert(varchar(50), [ContractLines].[InactiveDate], 21),
	 [ChangeByID] = concat('"', [ContractLines].[ChangeByID], '"'),
	 [ChangeDate] = convert(varchar(50), [ContractLines].[ChangeDate], 21),
	 [CreateByID] = concat('"', [ContractLines].[CreateByID], '"'),
	 [CreateDate] = convert(varchar(50), [ContractLines].[CreateDate], 21),
	 [LineDesc] = concat('"', [ContractLines].[LineDesc], '"'),
	 [SLATermID] = concat('"', [ContractLines].[SLATermID], '"'),
	 [StartBillingDate] = convert(varchar(50), [ContractLines].[StartBillingDate], 21),
	 [WrtyMonthlyRate] = concat('"', [ContractLines].[WrtyMonthlyRate], '"'),
	 [ContLineBilledThru] = convert(varchar(50), [ContractLines].[ContLineBilledThru], 21),
	 [ServiceDealerID] = concat('"', [ContractLines].[ServiceDealerID], '"'),
	 [Quantity] = concat('"', [ContractLines].[Quantity], '"'),
	 [SAP_SyncAck_DateTime] = convert(varchar(50), [ContractLines].[SAP_SyncAck_DateTime], 21),
	 [ActualLineStartDate] = convert(varchar(50), [ContractLines].[ActualLineStartDate], 21),
	 [ActualLineEndDate] = convert(varchar(50), [ContractLines].[ActualLineEndDate], 21),
	 [ParentContLIneID] = concat('"', [ContractLines].[ParentContLIneID], '"'),
	 [SAP_CL_Material_Key] = concat('"', [ContractLines].[SAP_CL_Material_Key], '"'),
	 [Subcontractor_PO] = concat('"', [ContractLines].[Subcontractor_PO], '"'),
	 [Subcontractor_PO_StartDate] = convert(varchar(50), [ContractLines].[Subcontractor_PO_StartDate], 21),
	 [Subcontractor_PO_EndDate] = convert(varchar(50), [ContractLines].[Subcontractor_PO_EndDate], 21),
	 [LineCancelDate] = convert(varchar(50), [ContractLines].[LineCancelDate], 21),
	 [ActualLineCancelDate] = convert(varchar(50), [ContractLines].[ActualLineCancelDate], 21),
	 [MirrorChildLineID] = concat('"', [ContractLines].[MirrorChildLineID], '"'),
	 [MirrorParentLineID] = concat('"', [ContractLines].[MirrorParentLineID], '"'),
	 [CancelReasonCode] = concat('"', [ContractLines].[CancelReasonCode], '"'),
	 [ServiceDealerCost] = concat('"', [ContractLines].[ServiceDealerCost], '"'),
	 [ContractWarehouseID] = concat('"', [ContractLines].[ContractWarehouseID], '"'),
	 [ServiceWarehouseID] = concat('"', [ContractLines].[ServiceWarehouseID], '"'),
	 [ContLineAddressID] = concat('"', [ContractLines].[ContLineAddressID], '"'),
	 [OrigContLineStartDate] = convert(varchar(50), [ContractLines].[OrigContLineStartDate], 21),
	 [OrigActualLineStartDate] = convert(varchar(50), [ContractLines].[OrigActualLineStartDate], 21),
	 [LastChangedByQuoteID] = concat('"', [ContractLines].[LastChangedByQuoteID], '"'),
	 [LastChangedByQuoteLineGuid] = concat('"', [ContractLines].[LastChangedByQuoteLineGuid], '"'),
	 [ContractLineTypeID] = concat('"', [ContractLines].[ContractLineTypeID], '"'),
	 [MirrorTaxAmount] = concat('"', [ContractLines].[MirrorTaxAmount], '"'),
	 [CustPONo] = concat('"', [ContractLines].[CustPONo], '"'),
	 [ForwardStockingLocationID] = concat('"', [ContractLines].[ForwardStockingLocationID], '"'),
	 [PartsServiceDealerID] = concat('"', [ContractLines].[PartsServiceDealerID], '"'),
	 [BacklineServiceDealerID] = concat('"', [ContractLines].[BacklineServiceDealerID], '"'),
	 [BacklineServiceDealerCost] = concat('"', [ContractLines].[BacklineServiceDealerCost], '"'),
	 [SourceProc] = concat('"', [ContractLines].[SourceProc], '"'),
	 [FSLWarehouseID] = concat('"', [ContractLines].[FSLWarehouseID], '"'),
	 [CallHomeProviderID] = concat('"', [ContractLines].[CallHomeProviderID], '"'),
	 [BacklineSubcontractor_PO] = concat('"', [ContractLines].[BacklineSubcontractor_PO], '"'),
	 [BacklineSubcontractor_PO_StartDate] = convert(varchar(50), [ContractLines].[BacklineSubcontractor_PO_StartDate], 21),
	 [BacklineSubcontractor_PO_EndDate] = convert(varchar(50), [ContractLines].[BacklineSubcontractor_PO_EndDate], 21),
	 [ContractLine_ExchangeRate] = concat('"', [ContractLines].[ContractLine_ExchangeRate], '"'),
	 [ContractLine_ExchangeRateDate] = convert(varchar(50), [ContractLines].[ContractLine_ExchangeRateDate], 21),
	 [Oracle_Contract_Line_ID] = concat('"', [ContractLines].[Oracle_Contract_Line_ID], '"'),
	 [Oracle_Contract_SubLine_ID] = concat('"', [ContractLines].[Oracle_Contract_SubLine_ID], '"'),
	 [Oracle_SyncAck_DateTime] = convert(varchar(50), [ContractLines].[Oracle_SyncAck_DateTime], 21),
	 [RetainerServiceDealerID] = concat('"', [ContractLines].[RetainerServiceDealerID], '"'),
	 [SoftwareServiceDealerID] = concat('"', [ContractLines].[SoftwareServiceDealerID], '"'),
	 [SoftwareSubcontractCost] = concat('"', [ContractLines].[SoftwareSubcontractCost], '"'),
	 [PartsServiceDealerCost] = concat('"', [ContractLines].[PartsServiceDealerCost], '"'),
	 [ServiceDealerCurrency] = concat('"', [ContractLines].[ServiceDealerCurrency], '"'),
	 [PartsServiceDealerCurrency] = concat('"', [ContractLines].[PartsServiceDealerCurrency], '"'),
	 [BacklineServiceDealerCurrency] = concat('"', [ContractLines].[BacklineServiceDealerCurrency], '"'),
	 [RetainerServiceDealerCurrency] = concat('"', [ContractLines].[RetainerServiceDealerCurrency], '"')
from SinglePoint.dbo.ContractLines