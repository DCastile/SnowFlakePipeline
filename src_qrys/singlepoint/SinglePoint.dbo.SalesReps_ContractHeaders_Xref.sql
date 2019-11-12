select
	 [UserID] = concat('"', [SalesReps_ContractHeaders_Xref].[UserID], '"'),
	 [ContractHeaderID] = concat('"', [SalesReps_ContractHeaders_Xref].[ContractHeaderID], '"'),
	 [PrimaryFlag] = concat('"', [SalesReps_ContractHeaders_Xref].[PrimaryFlag], '"'),
	 [ChangedByID] = concat('"', [SalesReps_ContractHeaders_Xref].[ChangedByID], '"'),
	 [LastChanged] = convert(varchar(50), [SalesReps_ContractHeaders_Xref].[LastChanged], 21),
	 [SalesRepID] = concat('"', [SalesReps_ContractHeaders_Xref].[SalesRepID], '"'),
	 [CreateDate] = convert(varchar(50), [SalesReps_ContractHeaders_Xref].[CreateDate], 21)
from SinglePoint.dbo.SalesReps_ContractHeaders_Xref