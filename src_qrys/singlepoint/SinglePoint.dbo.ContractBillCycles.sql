select
	 [ContBillingCycleID] = concat('"', [ContractBillCycles].[ContBillingCycleID], '"'),
	 [CycleName] = concat('"', [ContractBillCycles].[CycleName], '"'),
	 [Description] = concat('"', [ContractBillCycles].[Description], '"'),
	 [NumMonths] = concat('"', [ContractBillCycles].[NumMonths], '"'),
	 [PeriodName] = concat('"', [ContractBillCycles].[PeriodName], '"'),
	 [MASBillingFreq] = concat('"', [ContractBillCycles].[MASBillingFreq], '"'),
	 [SAP_Billing_Type] = concat('"', [ContractBillCycles].[SAP_Billing_Type], '"'),
	 [InactiveFlag] = concat('"', [ContractBillCycles].[InactiveFlag], '"'),
	 [MAS_ServiceTypeKey] = concat('"', [ContractBillCycles].[MAS_ServiceTypeKey], '"'),
	 [Oracle_BillingSchedule_ID] = concat('"', [ContractBillCycles].[Oracle_BillingSchedule_ID], '"'),
	 [Oracle_code] = concat('"', [ContractBillCycles].[Oracle_code], '"')
from SinglePoint.dbo.ContractBillCycles