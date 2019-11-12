select
	 [SrvDealerKey] = concat('"', [tqoSrvDealers].[SrvDealerKey], '"'),
	 [SrvDealerID] = concat('"', [tqoSrvDealers].[SrvDealerID], '"'),
	 [SrvDealerName] = concat('"', [tqoSrvDealers].[SrvDealerName], '"'),
	 [GenericSrvDealer] = concat('"', [tqoSrvDealers].[GenericSrvDealer], '"'),
	 [DefaultUserID] = concat('"', [tqoSrvDealers].[DefaultUserID], '"'),
	 [SAP_Vendor_Key] = concat('"', [tqoSrvDealers].[SAP_Vendor_Key], '"'),
	 [ServiceDealerID] = concat('"', [tqoSrvDealers].[ServiceDealerID], '"'),
	 [ChangedByID] = concat('"', [tqoSrvDealers].[ChangedByID], '"'),
	 [LastChanged] = convert(varchar(50), [tqoSrvDealers].[LastChanged], 21),
	 [CreateDate] = convert(varchar(50), [tqoSrvDealers].[CreateDate], 21),
	 [CreateByID] = concat('"', [tqoSrvDealers].[CreateByID], '"'),
	 [ShowOnShortList] = concat('"', [tqoSrvDealers].[ShowOnShortList], '"'),
	 [InactiveFlag] = concat('"', [tqoSrvDealers].[InactiveFlag], '"'),
	 [ServiceUsage] = concat('"', [tqoSrvDealers].[ServiceUsage], '"'),
	 [Oracle_vender_id] = concat('"', [tqoSrvDealers].[Oracle_vender_id], '"')
from SinglePoint.dbo.tqoSrvDealers