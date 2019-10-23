select
	 [ContBillingCycleID] = isNull(quotename([ContBillingCycleID], char(34)), '\N'),
	 [CycleName] = isNull(quotename([CycleName], char(34)), '\N'),
	 [Description] = isNull(quotename([Description], char(34)), '\N'),
	 [NumMonths] = isNull(quotename([NumMonths], char(34)), '\N'),
	 [PeriodName] = isNull(quotename([PeriodName], char(34)), '\N'),
	 [MASBillingFreq] = isNull(quotename([MASBillingFreq], char(34)), '\N'),
	 [SAP_Billing_Type] = isNull(quotename([SAP_Billing_Type], char(34)), '\N'),
	 [InactiveFlag] = isNull(quotename([InactiveFlag], char(34)), '\N'),
	 [MAS_ServiceTypeKey] = isNull(quotename([MAS_ServiceTypeKey], char(34)), '\N'),
	 [Oracle_BillingSchedule_ID] = isNull(quotename([Oracle_BillingSchedule_ID], char(34)), '\N'),
	 [Oracle_code] = isNull(quotename([Oracle_code], char(34)), '\N')
from SinglePoint.dbo.ContractBillCycles