select
	 [ContBillingCycleID] = concat(char(34), [ContractBillCycles].[ContBillingCycleID], char(34)),
	 [CycleName] = concat(char(34), [ContractBillCycles].[CycleName], char(34)),
	 [Description] = concat(char(34), [ContractBillCycles].[Description], char(34)),
	 [NumMonths] = concat(char(34), [ContractBillCycles].[NumMonths], char(34)),
	 [PeriodName] = concat(char(34), [ContractBillCycles].[PeriodName], char(34)),
	 [MASBillingFreq] = concat(char(34), [ContractBillCycles].[MASBillingFreq], char(34)),
	 [SAP_Billing_Type] = concat(char(34), [ContractBillCycles].[SAP_Billing_Type], char(34)),
	 [InactiveFlag] = concat(char(34), [ContractBillCycles].[InactiveFlag], char(34)),
	 [MAS_ServiceTypeKey] = concat(char(34), [ContractBillCycles].[MAS_ServiceTypeKey], char(34)),
	 [Oracle_BillingSchedule_ID] = concat(char(34), [ContractBillCycles].[Oracle_BillingSchedule_ID], char(34)),
	 [Oracle_code] = concat(char(34), [ContractBillCycles].[Oracle_code], char(34))
from SinglePoint.dbo.ContractBillCycles