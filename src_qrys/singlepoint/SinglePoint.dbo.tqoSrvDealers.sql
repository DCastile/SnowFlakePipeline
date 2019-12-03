select
	 [SrvDealerKey] = concat(char(34), isNull(replace(cast([tqoSrvDealers].[SrvDealerKey] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SrvDealerID] = concat(char(34), isNull(replace(cast([tqoSrvDealers].[SrvDealerID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SrvDealerName] = concat(char(34), isNull(replace(cast([tqoSrvDealers].[SrvDealerName] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [GenericSrvDealer] = concat(char(34), isNull(replace(cast([tqoSrvDealers].[GenericSrvDealer] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [DefaultUserID] = concat(char(34), isNull(replace(cast([tqoSrvDealers].[DefaultUserID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SAP_Vendor_Key] = concat(char(34), isNull(replace(cast([tqoSrvDealers].[SAP_Vendor_Key] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ServiceDealerID] = concat(char(34), isNull(replace(cast([tqoSrvDealers].[ServiceDealerID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ChangedByID] = concat(char(34), isNull(replace(cast([tqoSrvDealers].[ChangedByID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [LastChanged] = isNull(convert(varchar(50), [tqoSrvDealers].[LastChanged], 21), '\N'),
	 [CreateDate] = isNull(convert(varchar(50), [tqoSrvDealers].[CreateDate], 21), '\N'),
	 [CreateByID] = concat(char(34), isNull(replace(cast([tqoSrvDealers].[CreateByID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ShowOnShortList] = concat(char(34), isNull(replace(cast([tqoSrvDealers].[ShowOnShortList] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [InactiveFlag] = concat(char(34), isNull(replace(cast([tqoSrvDealers].[InactiveFlag] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ServiceUsage] = concat(char(34), isNull(replace(cast([tqoSrvDealers].[ServiceUsage] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Oracle_vender_id] = concat(char(34), isNull(replace(cast([tqoSrvDealers].[Oracle_vender_id] as nvarchar(max)), char(34), char(0)), '\N'), char(34))
from SinglePoint.dbo.tqoSrvDealers with(nolock)