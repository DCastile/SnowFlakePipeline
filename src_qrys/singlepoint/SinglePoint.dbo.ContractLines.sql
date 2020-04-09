select
	 [ContLineID] = isNull(cast([ContractLines].[ContLineID] as varchar(36)), '\N'),
	 [ContractHeaderID] = isNull(cast([ContractLines].[ContractHeaderID] as varchar(36)), '\N'),
	 [Line] = isNull(cast([ContractLines].[Line] as varchar(36)), '\N'),
	 [AssetHeaderID] = isNull(cast([ContractLines].[AssetHeaderID] as varchar(36)), '\N'),
	 [SMSContLineKey] = isNull(cast([ContractLines].[SMSContLineKey] as varchar(36)), '\N'),
	 [StatusCodeID] = isNull(cast([ContractLines].[StatusCodeID] as varchar(36)), '\N'),
	 [ContLineStartDate] = isNull(convert(varchar(50), [ContractLines].[ContLineStartDate], 21), '\N'),
	 [ContLineEndDate] = isNull(convert(varchar(50), [ContractLines].[ContLineEndDate], 21), '\N'),
	 [ContLineAlertDate] = isNull(convert(varchar(50), [ContractLines].[ContLineAlertDate], 21), '\N'),
	 [ContLineAlertContactID] = isNull(cast([ContractLines].[ContLineAlertContactID] as varchar(36)), '\N'),
	 [ContLinePeriodAmt] = isNull(cast([ContractLines].[ContLinePeriodAmt] as varchar(36)), '\N'),
	 [InactiveDate] = isNull(convert(varchar(50), [ContractLines].[InactiveDate], 21), '\N'),
	 [ChangeByID] = isNull(cast([ContractLines].[ChangeByID] as varchar(36)), '\N'),
	 [ChangeDate] = isNull(convert(varchar(50), [ContractLines].[ChangeDate], 21), '\N'),
	 [CreateByID] = isNull(cast([ContractLines].[CreateByID] as varchar(36)), '\N'),
	 [CreateDate] = isNull(convert(varchar(50), [ContractLines].[CreateDate], 21), '\N'),
	 [LineDesc] = concat(char(34), isNull(replace(cast([ContractLines].[LineDesc] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [SLATermID] = isNull(cast([ContractLines].[SLATermID] as varchar(36)), '\N'),
	 [StartBillingDate] = isNull(convert(varchar(50), [ContractLines].[StartBillingDate], 21), '\N'),
	 [WrtyMonthlyRate] = isNull(cast([ContractLines].[WrtyMonthlyRate] as varchar(36)), '\N'),
	 [ContLineBilledThru] = isNull(convert(varchar(50), [ContractLines].[ContLineBilledThru], 21), '\N'),
	 [ServiceDealerID] = isNull(cast([ContractLines].[ServiceDealerID] as varchar(36)), '\N'),
	 [Quantity] = isNull(cast([ContractLines].[Quantity] as varchar(36)), '\N'),
	 [SAP_SyncAck_DateTime] = isNull(convert(varchar(50), [ContractLines].[SAP_SyncAck_DateTime], 21), '\N'),
	 [ActualLineStartDate] = isNull(convert(varchar(50), [ContractLines].[ActualLineStartDate], 21), '\N'),
	 [ActualLineEndDate] = isNull(convert(varchar(50), [ContractLines].[ActualLineEndDate], 21), '\N'),
	 [ParentContLIneID] = isNull(cast([ContractLines].[ParentContLIneID] as varchar(36)), '\N'),
	 [SAP_CL_Material_Key] = concat(char(34), isNull(replace(cast([ContractLines].[SAP_CL_Material_Key] as nvarchar(18)), char(34), char(0)), '\N'), char(34)),
	 [Subcontractor_PO] = concat(char(34), isNull(replace(cast([ContractLines].[Subcontractor_PO] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [Subcontractor_PO_StartDate] = isNull(convert(varchar(50), [ContractLines].[Subcontractor_PO_StartDate], 21), '\N'),
	 [Subcontractor_PO_EndDate] = isNull(convert(varchar(50), [ContractLines].[Subcontractor_PO_EndDate], 21), '\N'),
	 [LineCancelDate] = isNull(convert(varchar(50), [ContractLines].[LineCancelDate], 21), '\N'),
	 [ActualLineCancelDate] = isNull(convert(varchar(50), [ContractLines].[ActualLineCancelDate], 21), '\N'),
	 [MirrorChildLineID] = isNull(cast([ContractLines].[MirrorChildLineID] as varchar(36)), '\N'),
	 [MirrorParentLineID] = isNull(cast([ContractLines].[MirrorParentLineID] as varchar(36)), '\N'),
	 [CancelReasonCode] = concat(char(34), isNull(replace(cast([ContractLines].[CancelReasonCode] as nvarchar(18)), char(34), char(0)), '\N'), char(34)),
	 [ServiceDealerCost] = isNull(cast([ContractLines].[ServiceDealerCost] as varchar(36)), '\N'),
	 [ContractWarehouseID] = isNull(cast([ContractLines].[ContractWarehouseID] as varchar(36)), '\N'),
	 [ServiceWarehouseID] = isNull(cast([ContractLines].[ServiceWarehouseID] as varchar(36)), '\N'),
	 [ContLineAddressID] = isNull(cast([ContractLines].[ContLineAddressID] as varchar(36)), '\N'),
	 [OrigContLineStartDate] = isNull(convert(varchar(50), [ContractLines].[OrigContLineStartDate], 21), '\N'),
	 [OrigActualLineStartDate] = isNull(convert(varchar(50), [ContractLines].[OrigActualLineStartDate], 21), '\N'),
	 [LastChangedByQuoteID] = concat(char(34), isNull(replace(cast([ContractLines].[LastChangedByQuoteID] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [LastChangedByQuoteLineGuid] = isNull(cast([ContractLines].[LastChangedByQuoteLineGuid] as varchar(36)), '\N'),
	 [ContractLineTypeID] = isNull(cast([ContractLines].[ContractLineTypeID] as varchar(36)), '\N'),
	 [MirrorTaxAmount] = isNull(cast([ContractLines].[MirrorTaxAmount] as varchar(36)), '\N'),
	 [CustPONo] = concat(char(34), isNull(replace(cast([ContractLines].[CustPONo] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [ForwardStockingLocationID] = isNull(cast([ContractLines].[ForwardStockingLocationID] as varchar(36)), '\N'),
	 [PartsServiceDealerID] = isNull(cast([ContractLines].[PartsServiceDealerID] as varchar(36)), '\N'),
	 [BacklineServiceDealerID] = isNull(cast([ContractLines].[BacklineServiceDealerID] as varchar(36)), '\N'),
	 [BacklineServiceDealerCost] = isNull(cast([ContractLines].[BacklineServiceDealerCost] as varchar(36)), '\N'),
	 [SourceProc] = concat(char(34), isNull(replace(cast([ContractLines].[SourceProc] as nvarchar(100)), char(34), char(0)), '\N'), char(34)),
	 [FSLWarehouseID] = isNull(cast([ContractLines].[FSLWarehouseID] as varchar(36)), '\N'),
	 [CallHomeProviderID] = isNull(cast([ContractLines].[CallHomeProviderID] as varchar(36)), '\N'),
	 [BacklineSubcontractor_PO] = concat(char(34), isNull(replace(cast([ContractLines].[BacklineSubcontractor_PO] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [BacklineSubcontractor_PO_StartDate] = isNull(convert(varchar(50), [ContractLines].[BacklineSubcontractor_PO_StartDate], 21), '\N'),
	 [BacklineSubcontractor_PO_EndDate] = isNull(convert(varchar(50), [ContractLines].[BacklineSubcontractor_PO_EndDate], 21), '\N'),
	 [ContractLine_ExchangeRate] = isNull(cast([ContractLines].[ContractLine_ExchangeRate] as varchar(36)), '\N'),
	 [ContractLine_ExchangeRateDate] = isNull(convert(varchar(50), [ContractLines].[ContractLine_ExchangeRateDate], 21), '\N'),
	 [Oracle_Contract_Line_ID] = concat(char(34), isNull(replace(cast([ContractLines].[Oracle_Contract_Line_ID] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [Oracle_Contract_SubLine_ID] = concat(char(34), isNull(replace(cast([ContractLines].[Oracle_Contract_SubLine_ID] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [Oracle_SyncAck_DateTime] = isNull(convert(varchar(50), [ContractLines].[Oracle_SyncAck_DateTime], 21), '\N'),
	 [RetainerServiceDealerID] = isNull(cast([ContractLines].[RetainerServiceDealerID] as varchar(36)), '\N'),
	 [SoftwareServiceDealerID] = isNull(cast([ContractLines].[SoftwareServiceDealerID] as varchar(36)), '\N'),
	 [SoftwareSubcontractCost] = isNull(cast([ContractLines].[SoftwareSubcontractCost] as varchar(36)), '\N'),
	 [PartsServiceDealerCost] = isNull(cast([ContractLines].[PartsServiceDealerCost] as varchar(36)), '\N'),
	 [ServiceDealerCurrency] = concat(char(34), isNull(replace(cast([ContractLines].[ServiceDealerCurrency] as nvarchar(10)), char(34), char(0)), '\N'), char(34)),
	 [PartsServiceDealerCurrency] = concat(char(34), isNull(replace(cast([ContractLines].[PartsServiceDealerCurrency] as nvarchar(10)), char(34), char(0)), '\N'), char(34)),
	 [BacklineServiceDealerCurrency] = concat(char(34), isNull(replace(cast([ContractLines].[BacklineServiceDealerCurrency] as nvarchar(10)), char(34), char(0)), '\N'), char(34)),
	 [RetainerServiceDealerCurrency] = concat(char(34), isNull(replace(cast([ContractLines].[RetainerServiceDealerCurrency] as nvarchar(10)), char(34), char(0)), '\N'), char(34)),
	 [noticeFlag] = isNull(cast([ContractLines].[noticeFlag] as varchar(36)), '\N'),
	 [noticeDate] = isNull(convert(varchar(50), [ContractLines].[noticeDate], 21), '\N'),
	 [noticeUserID] = isNull(cast([ContractLines].[noticeUserID] as varchar(36)), '\N')
from SinglePoint.dbo.ContractLines