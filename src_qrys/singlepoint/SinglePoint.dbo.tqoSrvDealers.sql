select
	 [SrvDealerKey] = quotename([tqoSrvDealers].[SrvDealerKey], char(34)),
	 [SrvDealerID] = quotename([tqoSrvDealers].[SrvDealerID], char(34)),
	 [SrvDealerName] = quotename([tqoSrvDealers].[SrvDealerName], char(34)),
	 [GenericSrvDealer] = quotename([tqoSrvDealers].[GenericSrvDealer], char(34)),
	 [DefaultUserID] = quotename([tqoSrvDealers].[DefaultUserID], char(34)),
	 [SAP_Vendor_Key] = quotename([tqoSrvDealers].[SAP_Vendor_Key], char(34)),
	 [ServiceDealerID] = quotename([tqoSrvDealers].[ServiceDealerID], char(34)),
	 [ChangedByID] = quotename([tqoSrvDealers].[ChangedByID], char(34)),
	 [LastChanged] = convert(varchar(50), [tqoSrvDealers].[LastChanged], 21),
	 [CreateDate] = convert(varchar(50), [tqoSrvDealers].[CreateDate], 21),
	 [CreateByID] = quotename([tqoSrvDealers].[CreateByID], char(34)),
	 [ShowOnShortList] = quotename([tqoSrvDealers].[ShowOnShortList], char(34)),
	 [InactiveFlag] = quotename([tqoSrvDealers].[InactiveFlag], char(34)),
	 [ServiceUsage] = quotename([tqoSrvDealers].[ServiceUsage], char(34)),
	 [Oracle_vender_id] = quotename([tqoSrvDealers].[Oracle_vender_id], char(34))
from SinglePoint.dbo.tqoSrvDealers