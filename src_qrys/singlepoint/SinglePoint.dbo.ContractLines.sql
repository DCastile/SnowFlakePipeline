select
	 [ContLineID] = concat(char(34), isNull(replace(cast([ContractLines].[ContLineID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ContractHeaderID] = concat(char(34), isNull(replace(cast([ContractLines].[ContractHeaderID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Line] = concat(char(34), isNull(replace(cast([ContractLines].[Line] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [AssetHeaderID] = concat(char(34), isNull(replace(cast([ContractLines].[AssetHeaderID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SMSContLineKey] = concat(char(34), isNull(replace(cast([ContractLines].[SMSContLineKey] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [StatusCodeID] = concat(char(34), isNull(replace(cast([ContractLines].[StatusCodeID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ContLineStartDate] = isNull(convert(varchar(50), [ContractLines].[ContLineStartDate], 21), '\N'),
	 [ContLineEndDate] = isNull(convert(varchar(50), [ContractLines].[ContLineEndDate], 21), '\N'),
	 [ContLineAlertDate] = isNull(convert(varchar(50), [ContractLines].[ContLineAlertDate], 21), '\N'),
	 [ContLineAlertContactID] = concat(char(34), isNull(replace(cast([ContractLines].[ContLineAlertContactID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ContLinePeriodAmt] = concat(char(34), isNull(replace(cast([ContractLines].[ContLinePeriodAmt] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [InactiveDate] = isNull(convert(varchar(50), [ContractLines].[InactiveDate], 21), '\N'),
	 [ChangeByID] = concat(char(34), isNull(replace(cast([ContractLines].[ChangeByID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ChangeDate] = isNull(convert(varchar(50), [ContractLines].[ChangeDate], 21), '\N'),
	 [CreateByID] = concat(char(34), isNull(replace(cast([ContractLines].[CreateByID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [CreateDate] = isNull(convert(varchar(50), [ContractLines].[CreateDate], 21), '\N'),
	 [LineDesc] = concat(char(34), isNull(replace(cast([ContractLines].[LineDesc] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SLATermID] = concat(char(34), isNull(replace(cast([ContractLines].[SLATermID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [StartBillingDate] = isNull(convert(varchar(50), [ContractLines].[StartBillingDate], 21), '\N'),
	 [WrtyMonthlyRate] = concat(char(34), isNull(replace(cast([ContractLines].[WrtyMonthlyRate] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ContLineBilledThru] = isNull(convert(varchar(50), [ContractLines].[ContLineBilledThru], 21), '\N'),
	 [ServiceDealerID] = concat(char(34), isNull(replace(cast([ContractLines].[ServiceDealerID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Quantity] = concat(char(34), isNull(replace(cast([ContractLines].[Quantity] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SAP_SyncAck_DateTime] = isNull(convert(varchar(50), [ContractLines].[SAP_SyncAck_DateTime], 21), '\N'),
	 [ActualLineStartDate] = isNull(convert(varchar(50), [ContractLines].[ActualLineStartDate], 21), '\N'),
	 [ActualLineEndDate] = isNull(convert(varchar(50), [ContractLines].[ActualLineEndDate], 21), '\N'),
	 [ParentContLIneID] = concat(char(34), isNull(replace(cast([ContractLines].[ParentContLIneID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SAP_CL_Material_Key] = concat(char(34), isNull(replace(cast([ContractLines].[SAP_CL_Material_Key] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Subcontractor_PO] = concat(char(34), isNull(replace(cast([ContractLines].[Subcontractor_PO] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Subcontractor_PO_StartDate] = isNull(convert(varchar(50), [ContractLines].[Subcontractor_PO_StartDate], 21), '\N'),
	 [Subcontractor_PO_EndDate] = isNull(convert(varchar(50), [ContractLines].[Subcontractor_PO_EndDate], 21), '\N'),
	 [LineCancelDate] = isNull(convert(varchar(50), [ContractLines].[LineCancelDate], 21), '\N'),
	 [ActualLineCancelDate] = isNull(convert(varchar(50), [ContractLines].[ActualLineCancelDate], 21), '\N'),
	 [MirrorChildLineID] = concat(char(34), isNull(replace(cast([ContractLines].[MirrorChildLineID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [MirrorParentLineID] = concat(char(34), isNull(replace(cast([ContractLines].[MirrorParentLineID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [CancelReasonCode] = concat(char(34), isNull(replace(cast([ContractLines].[CancelReasonCode] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ServiceDealerCost] = concat(char(34), isNull(replace(cast([ContractLines].[ServiceDealerCost] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ContractWarehouseID] = concat(char(34), isNull(replace(cast([ContractLines].[ContractWarehouseID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ServiceWarehouseID] = concat(char(34), isNull(replace(cast([ContractLines].[ServiceWarehouseID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ContLineAddressID] = concat(char(34), isNull(replace(cast([ContractLines].[ContLineAddressID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [OrigContLineStartDate] = isNull(convert(varchar(50), [ContractLines].[OrigContLineStartDate], 21), '\N'),
	 [OrigActualLineStartDate] = isNull(convert(varchar(50), [ContractLines].[OrigActualLineStartDate], 21), '\N'),
	 [LastChangedByQuoteID] = concat(char(34), isNull(replace(cast([ContractLines].[LastChangedByQuoteID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [LastChangedByQuoteLineGuid] = concat(char(34), isNull(replace(cast([ContractLines].[LastChangedByQuoteLineGuid] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ContractLineTypeID] = concat(char(34), isNull(replace(cast([ContractLines].[ContractLineTypeID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [MirrorTaxAmount] = concat(char(34), isNull(replace(cast([ContractLines].[MirrorTaxAmount] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [CustPONo] = concat(char(34), isNull(replace(cast([ContractLines].[CustPONo] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ForwardStockingLocationID] = concat(char(34), isNull(replace(cast([ContractLines].[ForwardStockingLocationID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [PartsServiceDealerID] = concat(char(34), isNull(replace(cast([ContractLines].[PartsServiceDealerID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [BacklineServiceDealerID] = concat(char(34), isNull(replace(cast([ContractLines].[BacklineServiceDealerID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [BacklineServiceDealerCost] = concat(char(34), isNull(replace(cast([ContractLines].[BacklineServiceDealerCost] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SourceProc] = concat(char(34), isNull(replace(cast([ContractLines].[SourceProc] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [FSLWarehouseID] = concat(char(34), isNull(replace(cast([ContractLines].[FSLWarehouseID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [CallHomeProviderID] = concat(char(34), isNull(replace(cast([ContractLines].[CallHomeProviderID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [BacklineSubcontractor_PO] = concat(char(34), isNull(replace(cast([ContractLines].[BacklineSubcontractor_PO] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [BacklineSubcontractor_PO_StartDate] = isNull(convert(varchar(50), [ContractLines].[BacklineSubcontractor_PO_StartDate], 21), '\N'),
	 [BacklineSubcontractor_PO_EndDate] = isNull(convert(varchar(50), [ContractLines].[BacklineSubcontractor_PO_EndDate], 21), '\N'),
	 [ContractLine_ExchangeRate] = concat(char(34), isNull(replace(cast([ContractLines].[ContractLine_ExchangeRate] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ContractLine_ExchangeRateDate] = isNull(convert(varchar(50), [ContractLines].[ContractLine_ExchangeRateDate], 21), '\N'),
	 [Oracle_Contract_Line_ID] = concat(char(34), isNull(replace(cast([ContractLines].[Oracle_Contract_Line_ID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Oracle_Contract_SubLine_ID] = concat(char(34), isNull(replace(cast([ContractLines].[Oracle_Contract_SubLine_ID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Oracle_SyncAck_DateTime] = isNull(convert(varchar(50), [ContractLines].[Oracle_SyncAck_DateTime], 21), '\N'),
	 [RetainerServiceDealerID] = concat(char(34), isNull(replace(cast([ContractLines].[RetainerServiceDealerID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SoftwareServiceDealerID] = concat(char(34), isNull(replace(cast([ContractLines].[SoftwareServiceDealerID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SoftwareSubcontractCost] = concat(char(34), isNull(replace(cast([ContractLines].[SoftwareSubcontractCost] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [PartsServiceDealerCost] = concat(char(34), isNull(replace(cast([ContractLines].[PartsServiceDealerCost] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ServiceDealerCurrency] = concat(char(34), isNull(replace(cast([ContractLines].[ServiceDealerCurrency] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [PartsServiceDealerCurrency] = concat(char(34), isNull(replace(cast([ContractLines].[PartsServiceDealerCurrency] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [BacklineServiceDealerCurrency] = concat(char(34), isNull(replace(cast([ContractLines].[BacklineServiceDealerCurrency] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [RetainerServiceDealerCurrency] = concat(char(34), isNull(replace(cast([ContractLines].[RetainerServiceDealerCurrency] as nvarchar(max)), char(34), char(0)), '\N'), char(34))
from SinglePoint.dbo.ContractLines