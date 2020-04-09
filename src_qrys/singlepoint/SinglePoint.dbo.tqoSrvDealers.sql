select
	 [SrvDealerKey] = isNull(cast([tqoSrvDealers].[SrvDealerKey] as varchar(36)), '\N'),
	 [SrvDealerID] = concat(char(34), isNull(replace(cast([tqoSrvDealers].[SrvDealerID] as nvarchar(12)), char(34), char(0)), '\N'), char(34)),
	 [SrvDealerName] = concat(char(34), isNull(replace(cast([tqoSrvDealers].[SrvDealerName] as nvarchar(40)), char(34), char(0)), '\N'), char(34)),
	 [GenericSrvDealer] = isNull(cast([tqoSrvDealers].[GenericSrvDealer] as varchar(36)), '\N'),
	 [DefaultUserID] = isNull(cast([tqoSrvDealers].[DefaultUserID] as varchar(36)), '\N'),
	 [SAP_Vendor_Key] = concat(char(34), isNull(replace(cast([tqoSrvDealers].[SAP_Vendor_Key] as nvarchar(18)), char(34), char(0)), '\N'), char(34)),
	 [ServiceDealerID] = isNull(cast([tqoSrvDealers].[ServiceDealerID] as varchar(36)), '\N'),
	 [ChangedByID] = isNull(cast([tqoSrvDealers].[ChangedByID] as varchar(36)), '\N'),
	 [LastChanged] = isNull(convert(varchar(50), [tqoSrvDealers].[LastChanged], 21), '\N'),
	 [CreateDate] = isNull(convert(varchar(50), [tqoSrvDealers].[CreateDate], 21), '\N'),
	 [CreateByID] = isNull(cast([tqoSrvDealers].[CreateByID] as varchar(36)), '\N'),
	 [ShowOnShortList] = isNull(cast([tqoSrvDealers].[ShowOnShortList] as varchar(36)), '\N'),
	 [InactiveFlag] = isNull(cast([tqoSrvDealers].[InactiveFlag] as varchar(36)), '\N'),
	 [ServiceUsage] = isNull(cast([tqoSrvDealers].[ServiceUsage] as varchar(36)), '\N'),
	 [Oracle_vender_id] = isNull(cast([tqoSrvDealers].[Oracle_vender_id] as varchar(36)), '\N')
from SinglePoint.dbo.tqoSrvDealers