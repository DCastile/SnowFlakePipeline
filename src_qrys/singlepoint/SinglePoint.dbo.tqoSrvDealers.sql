select
	 [SrvDealerKey] = concat(char(34), [tqoSrvDealers].[SrvDealerKey], char(34)),
	 [SrvDealerID] = concat(char(34), [tqoSrvDealers].[SrvDealerID], char(34)),
	 [SrvDealerName] = concat(char(34), [tqoSrvDealers].[SrvDealerName], char(34)),
	 [GenericSrvDealer] = concat(char(34), [tqoSrvDealers].[GenericSrvDealer], char(34)),
	 [DefaultUserID] = concat(char(34), [tqoSrvDealers].[DefaultUserID], char(34)),
	 [SAP_Vendor_Key] = concat(char(34), [tqoSrvDealers].[SAP_Vendor_Key], char(34)),
	 [ServiceDealerID] = concat(char(34), [tqoSrvDealers].[ServiceDealerID], char(34)),
	 [ChangedByID] = concat(char(34), [tqoSrvDealers].[ChangedByID], char(34)),
	 [LastChanged] = convert(varchar(50), [tqoSrvDealers].[LastChanged], 21),
	 [CreateDate] = convert(varchar(50), [tqoSrvDealers].[CreateDate], 21),
	 [CreateByID] = concat(char(34), [tqoSrvDealers].[CreateByID], char(34)),
	 [ShowOnShortList] = concat(char(34), [tqoSrvDealers].[ShowOnShortList], char(34)),
	 [InactiveFlag] = concat(char(34), [tqoSrvDealers].[InactiveFlag], char(34)),
	 [ServiceUsage] = concat(char(34), [tqoSrvDealers].[ServiceUsage], char(34)),
	 [Oracle_vender_id] = concat(char(34), [tqoSrvDealers].[Oracle_vender_id], char(34))
from SinglePoint.dbo.tqoSrvDealers