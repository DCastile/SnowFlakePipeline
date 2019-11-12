select
	 [ContBillingCycleID] = concat(char(34), isNull(cast([ContractBillCycles].[ContBillingCycleID] as nvarchar(max)), '\N'), char(34)),
	 [CycleName] = concat(char(34), isNull(cast([ContractBillCycles].[CycleName] as nvarchar(max)), '\N'), char(34)),
	 [Description] = concat(char(34), isNull(cast([ContractBillCycles].[Description] as nvarchar(max)), '\N'), char(34)),
	 [NumMonths] = concat(char(34), isNull(cast([ContractBillCycles].[NumMonths] as nvarchar(max)), '\N'), char(34)),
	 [PeriodName] = concat(char(34), isNull(cast([ContractBillCycles].[PeriodName] as nvarchar(max)), '\N'), char(34)),
	 [MASBillingFreq] = concat(char(34), isNull(cast([ContractBillCycles].[MASBillingFreq] as nvarchar(max)), '\N'), char(34)),
	 [SAP_Billing_Type] = concat(char(34), isNull(cast([ContractBillCycles].[SAP_Billing_Type] as nvarchar(max)), '\N'), char(34)),
	 [InactiveFlag] = concat(char(34), isNull(cast([ContractBillCycles].[InactiveFlag] as nvarchar(max)), '\N'), char(34)),
	 [MAS_ServiceTypeKey] = concat(char(34), isNull(cast([ContractBillCycles].[MAS_ServiceTypeKey] as nvarchar(max)), '\N'), char(34)),
	 [Oracle_BillingSchedule_ID] = concat(char(34), isNull(cast([ContractBillCycles].[Oracle_BillingSchedule_ID] as nvarchar(max)), '\N'), char(34)),
	 [Oracle_code] = concat(char(34), isNull(cast([ContractBillCycles].[Oracle_code] as nvarchar(max)), '\N'), char(34))
from SinglePoint.dbo.ContractBillCycles