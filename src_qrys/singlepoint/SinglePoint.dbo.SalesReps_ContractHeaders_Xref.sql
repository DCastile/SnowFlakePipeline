select
	 [UserID] = isNull(cast([SalesReps_ContractHeaders_Xref].[UserID] as varchar(36)), '\N'),
	 [ContractHeaderID] = isNull(cast([SalesReps_ContractHeaders_Xref].[ContractHeaderID] as varchar(36)), '\N'),
	 [PrimaryFlag] = isNull(cast([SalesReps_ContractHeaders_Xref].[PrimaryFlag] as varchar(36)), '\N'),
	 [ChangedByID] = isNull(cast([SalesReps_ContractHeaders_Xref].[ChangedByID] as varchar(36)), '\N'),
	 [LastChanged] = isNull(convert(varchar(50), [SalesReps_ContractHeaders_Xref].[LastChanged], 21), '\N'),
	 [SalesRepID] = isNull(cast([SalesReps_ContractHeaders_Xref].[SalesRepID] as varchar(36)), '\N'),
	 [CreateDate] = isNull(convert(varchar(50), [SalesReps_ContractHeaders_Xref].[CreateDate], 21), '\N')
from SinglePoint.dbo.SalesReps_ContractHeaders_Xref