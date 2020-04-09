select
	 [ContBillingCycleID] = isNull(cast([ContractBillCycles].[ContBillingCycleID] as varchar(36)), '\N'),
	 [CycleName] = concat(char(34), isNull(replace(cast([ContractBillCycles].[CycleName] as nvarchar(25)), char(34), char(0)), '\N'), char(34)),
	 [Description] = concat(char(34), isNull(replace(cast([ContractBillCycles].[Description] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [NumMonths] = isNull(cast([ContractBillCycles].[NumMonths] as varchar(36)), '\N'),
	 [PeriodName] = concat(char(34), isNull(replace(cast([ContractBillCycles].[PeriodName] as nvarchar(15)), char(34), char(0)), '\N'), char(34)),
	 [MASBillingFreq] = isNull(cast([ContractBillCycles].[MASBillingFreq] as varchar(36)), '\N'),
	 [SAP_Billing_Type] = concat(char(34), isNull(replace(cast([ContractBillCycles].[SAP_Billing_Type] as nvarchar(5)), char(34), char(0)), '\N'), char(34)),
	 [InactiveFlag] = isNull(cast([ContractBillCycles].[InactiveFlag] as varchar(36)), '\N'),
	 [MAS_ServiceTypeKey] = isNull(cast([ContractBillCycles].[MAS_ServiceTypeKey] as varchar(36)), '\N'),
	 [Oracle_BillingSchedule_ID] = isNull(cast([ContractBillCycles].[Oracle_BillingSchedule_ID] as varchar(36)), '\N'),
	 [Oracle_code] = concat(char(34), isNull(replace(cast([ContractBillCycles].[Oracle_code] as nvarchar(40)), char(34), char(0)), '\N'), char(34))
from SinglePoint.dbo.ContractBillCycles