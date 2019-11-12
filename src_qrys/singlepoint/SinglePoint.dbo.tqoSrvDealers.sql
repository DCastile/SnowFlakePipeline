select
	 [SrvDealerKey] = concat(char(34), isNull(cast([tqoSrvDealers].[SrvDealerKey] as nvarchar(max)), '\N'), char(34)),
	 [SrvDealerID] = concat(char(34), isNull(cast([tqoSrvDealers].[SrvDealerID] as nvarchar(max)), '\N'), char(34)),
	 [SrvDealerName] = concat(char(34), isNull(cast([tqoSrvDealers].[SrvDealerName] as nvarchar(max)), '\N'), char(34)),
	 [GenericSrvDealer] = concat(char(34), isNull(cast([tqoSrvDealers].[GenericSrvDealer] as nvarchar(max)), '\N'), char(34)),
	 [DefaultUserID] = concat(char(34), isNull(cast([tqoSrvDealers].[DefaultUserID] as nvarchar(max)), '\N'), char(34)),
	 [SAP_Vendor_Key] = concat(char(34), isNull(cast([tqoSrvDealers].[SAP_Vendor_Key] as nvarchar(max)), '\N'), char(34)),
	 [ServiceDealerID] = concat(char(34), isNull(cast([tqoSrvDealers].[ServiceDealerID] as nvarchar(max)), '\N'), char(34)),
	 [ChangedByID] = concat(char(34), isNull(cast([tqoSrvDealers].[ChangedByID] as nvarchar(max)), '\N'), char(34)),
	 [LastChanged] = isNull(convert(varchar(50), [tqoSrvDealers].[LastChanged], 21), '\N'),
	 [CreateDate] = isNull(convert(varchar(50), [tqoSrvDealers].[CreateDate], 21), '\N'),
	 [CreateByID] = concat(char(34), isNull(cast([tqoSrvDealers].[CreateByID] as nvarchar(max)), '\N'), char(34)),
	 [ShowOnShortList] = concat(char(34), isNull(cast([tqoSrvDealers].[ShowOnShortList] as nvarchar(max)), '\N'), char(34)),
	 [InactiveFlag] = concat(char(34), isNull(cast([tqoSrvDealers].[InactiveFlag] as nvarchar(max)), '\N'), char(34)),
	 [ServiceUsage] = concat(char(34), isNull(cast([tqoSrvDealers].[ServiceUsage] as nvarchar(max)), '\N'), char(34)),
	 [Oracle_vender_id] = concat(char(34), isNull(cast([tqoSrvDealers].[Oracle_vender_id] as nvarchar(max)), '\N'), char(34))
from SinglePoint.dbo.tqoSrvDealers