select
	 [ContBillingCycleID] = quotename([ContractBillCycles].[ContBillingCycleID], char(34)),
	 [CycleName] = quotename([ContractBillCycles].[CycleName], char(34)),
	 [Description] = quotename([ContractBillCycles].[Description], char(34)),
	 [NumMonths] = quotename([ContractBillCycles].[NumMonths], char(34)),
	 [PeriodName] = quotename([ContractBillCycles].[PeriodName], char(34)),
	 [MASBillingFreq] = quotename([ContractBillCycles].[MASBillingFreq], char(34)),
	 [SAP_Billing_Type] = quotename([ContractBillCycles].[SAP_Billing_Type], char(34)),
	 [InactiveFlag] = quotename([ContractBillCycles].[InactiveFlag], char(34)),
	 [MAS_ServiceTypeKey] = quotename([ContractBillCycles].[MAS_ServiceTypeKey], char(34)),
	 [Oracle_BillingSchedule_ID] = quotename([ContractBillCycles].[Oracle_BillingSchedule_ID], char(34)),
	 [Oracle_code] = quotename([ContractBillCycles].[Oracle_code], char(34))
from SinglePoint.dbo.ContractBillCycles