select
	 [CustomerID] = concat(char(34), isNull(replace(cast([Customers].[CustomerID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [CustomerName] = concat(char(34), isNull(replace(cast([Customers].[CustomerName] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SMSFlag] = concat(char(34), isNull(replace(cast([Customers].[SMSFlag] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [CreateByID] = concat(char(34), isNull(replace(cast([Customers].[CreateByID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [CreateDate] = isNull(convert(varchar(50), [Customers].[CreateDate], 21), '\N'),
	 [SMSCustKey] = concat(char(34), isNull(replace(cast([Customers].[SMSCustKey] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SMSCustID] = concat(char(34), isNull(replace(cast([Customers].[SMSCustID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SubDomain] = concat(char(34), isNull(replace(cast([Customers].[SubDomain] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ParentID] = concat(char(34), isNull(replace(cast([Customers].[ParentID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [PartnerFlag] = concat(char(34), isNull(replace(cast([Customers].[PartnerFlag] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SMSShipToAddrKey] = concat(char(34), isNull(replace(cast([Customers].[SMSShipToAddrKey] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [HoldFlag] = concat(char(34), isNull(replace(cast([Customers].[HoldFlag] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [UsageType] = concat(char(34), isNull(replace(cast([Customers].[UsageType] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SourceSystem] = concat(char(34), isNull(replace(cast([Customers].[SourceSystem] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SourceCompany] = concat(char(34), isNull(replace(cast([Customers].[SourceCompany] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SourceProc] = concat(char(34), isNull(replace(cast([Customers].[SourceProc] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [MASCompanyID] = concat(char(34), isNull(replace(cast([Customers].[MASCompanyID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SAP_Customer_Key] = concat(char(34), isNull(replace(cast([Customers].[SAP_Customer_Key] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SAP_Temporary_Key] = concat(char(34), isNull(replace(cast([Customers].[SAP_Temporary_Key] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SAP_SyncAck_DateTime] = isNull(convert(varchar(50), [Customers].[SAP_SyncAck_DateTime], 21), '\N'),
	 [LastChanged] = isNull(convert(varchar(50), [Customers].[LastChanged], 21), '\N'),
	 [SalesRepID] = concat(char(34), isNull(replace(cast([Customers].[SalesRepID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [allowSubcontractedTimeAndMaterial] = concat(char(34), isNull(replace(cast([Customers].[allowSubcontractedTimeAndMaterial] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SalesForce_Customer_Key] = concat(char(34), isNull(replace(cast([Customers].[SalesForce_Customer_Key] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Oracle_ID] = concat(char(34), isNull(replace(cast([Customers].[Oracle_ID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [CustomerFullName] = concat(char(34), isNull(replace(cast([Customers].[CustomerFullName] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [DUNS_Number] = concat(char(34), isNull(replace(cast([Customers].[DUNS_Number] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ChannelPartnerFlag] = concat(char(34), isNull(replace(cast([Customers].[ChannelPartnerFlag] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SFDC_SalesRep] = concat(char(34), isNull(replace(cast([Customers].[SFDC_SalesRep] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SFDC_SalesTeam] = concat(char(34), isNull(replace(cast([Customers].[SFDC_SalesTeam] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SFDC_GroupTeam] = concat(char(34), isNull(replace(cast([Customers].[SFDC_GroupTeam] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [DUNS_Parent] = concat(char(34), isNull(replace(cast([Customers].[DUNS_Parent] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SalesForce_Parent_Key] = concat(char(34), isNull(replace(cast([Customers].[SalesForce_Parent_Key] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [EnforceUserDomains] = concat(char(34), isNull(replace(cast([Customers].[EnforceUserDomains] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Purpose] = concat(char(34), isNull(replace(cast([Customers].[Purpose] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [Region] = concat(char(34), isNull(replace(cast([Customers].[Region] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [NetPromoterScore] = concat(char(34), isNull(replace(cast([Customers].[NetPromoterScore] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [PaymentTermID] = concat(char(34), isNull(replace(cast([Customers].[PaymentTermID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [PO_Required_ContractOrders] = concat(char(34), isNull(replace(cast([Customers].[PO_Required_ContractOrders] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [PO_Required_TM] = concat(char(34), isNull(replace(cast([Customers].[PO_Required_TM] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [InstanceID] = concat(char(34), isNull(replace(cast([Customers].[InstanceID] as nvarchar(max)), char(34), char(0)), '\N'), char(34))
from SinglePoint.dbo.Customers