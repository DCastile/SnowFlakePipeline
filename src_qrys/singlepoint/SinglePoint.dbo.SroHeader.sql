select
	 [SroID] = concat(char(34), isNull(cast([SroHeader].[SroID] as nvarchar(max)), '\N'), char(34)),
	 [SroKey] = concat(char(34), isNull(cast([SroHeader].[SroKey] as nvarchar(max)), '\N'), char(34)),
	 [SroNumber] = concat(char(34), isNull(cast([SroHeader].[SroNumber] as nvarchar(max)), '\N'), char(34)),
	 [Description] = concat(char(34), isNull(cast([SroHeader].[Description] as nvarchar(max)), '\N'), char(34)),
	 [StatusCodeID] = concat(char(34), isNull(cast([SroHeader].[StatusCodeID] as nvarchar(max)), '\N'), char(34)),
	 [CustomerID] = concat(char(34), isNull(cast([SroHeader].[CustomerID] as nvarchar(max)), '\N'), char(34)),
	 [IncidentID] = concat(char(34), isNull(cast([SroHeader].[IncidentID] as nvarchar(max)), '\N'), char(34)),
	 [UserID] = concat(char(34), isNull(cast([SroHeader].[UserID] as nvarchar(max)), '\N'), char(34)),
	 [OpenedDate] = isNull(convert(varchar(50), [SroHeader].[OpenedDate], 21), '\N'),
	 [UpdatedDate] = isNull(convert(varchar(50), [SroHeader].[UpdatedDate], 21), '\N'),
	 [ClosedDate] = isNull(convert(varchar(50), [SroHeader].[ClosedDate], 21), '\N'),
	 [BillManagerID] = concat(char(34), isNull(cast([SroHeader].[BillManagerID] as nvarchar(max)), '\N'), char(34)),
	 [AutoCloseAfterInvoicing] = concat(char(34), isNull(cast([SroHeader].[AutoCloseAfterInvoicing] as nvarchar(max)), '\N'), char(34)),
	 [ContactID] = concat(char(34), isNull(cast([SroHeader].[ContactID] as nvarchar(max)), '\N'), char(34)),
	 [Notes] = concat(char(34), isNull(cast([SroHeader].[Notes] as nvarchar(max)), '\N'), char(34)),
	 [ImportFrom] = concat(char(34), isNull(cast([SroHeader].[ImportFrom] as nvarchar(max)), '\N'), char(34)),
	 [ImportDate] = isNull(convert(varchar(50), [SroHeader].[ImportDate], 21), '\N'),
	 [ImportBatch] = concat(char(34), isNull(cast([SroHeader].[ImportBatch] as nvarchar(max)), '\N'), char(34)),
	 [AsyncStatus] = concat(char(34), isNull(cast([SroHeader].[AsyncStatus] as nvarchar(max)), '\N'), char(34)),
	 [AsyncError] = concat(char(34), isNull(cast([SroHeader].[AsyncError] as nvarchar(max)), '\N'), char(34)),
	 [WarehouseID] = concat(char(34), isNull(cast([SroHeader].[WarehouseID] as nvarchar(max)), '\N'), char(34)),
	 [SroTypeID] = concat(char(34), isNull(cast([SroHeader].[SroTypeID] as nvarchar(max)), '\N'), char(34)),
	 [PONumber] = concat(char(34), isNull(cast([SroHeader].[PONumber] as nvarchar(max)), '\N'), char(34)),
	 [PurchaseOrderID] = concat(char(34), isNull(cast([SroHeader].[PurchaseOrderID] as nvarchar(max)), '\N'), char(34)),
	 [DepartmentID] = concat(char(34), isNull(cast([SroHeader].[DepartmentID] as nvarchar(max)), '\N'), char(34)),
	 [CreateDate] = isNull(convert(varchar(50), [SroHeader].[CreateDate], 21), '\N'),
	 [CurrencyCode] = concat(char(34), isNull(cast([SroHeader].[CurrencyCode] as nvarchar(max)), '\N'), char(34)),
	 [BillToAddressID] = concat(char(34), isNull(cast([SroHeader].[BillToAddressID] as nvarchar(max)), '\N'), char(34)),
	 [ShipToAddressID] = concat(char(34), isNull(cast([SroHeader].[ShipToAddressID] as nvarchar(max)), '\N'), char(34)),
	 [CurrencyExchangeRate] = concat(char(34), isNull(cast([SroHeader].[CurrencyExchangeRate] as nvarchar(max)), '\N'), char(34)),
	 [UpdatedUserName] = concat(char(34), isNull(cast([SroHeader].[UpdatedUserName] as nvarchar(max)), '\N'), char(34))
from SinglePoint.dbo.SroHeader