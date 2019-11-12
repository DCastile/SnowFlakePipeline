select
	 [UserID] = concat(char(34), [SalesReps_ContractHeaders_Xref].[UserID], char(34)),
	 [ContractHeaderID] = concat(char(34), [SalesReps_ContractHeaders_Xref].[ContractHeaderID], char(34)),
	 [PrimaryFlag] = concat(char(34), [SalesReps_ContractHeaders_Xref].[PrimaryFlag], char(34)),
	 [ChangedByID] = concat(char(34), [SalesReps_ContractHeaders_Xref].[ChangedByID], char(34)),
	 [LastChanged] = convert(varchar(50), [SalesReps_ContractHeaders_Xref].[LastChanged], 21),
	 [SalesRepID] = concat(char(34), [SalesReps_ContractHeaders_Xref].[SalesRepID], char(34)),
	 [CreateDate] = convert(varchar(50), [SalesReps_ContractHeaders_Xref].[CreateDate], 21)
from SinglePoint.dbo.SalesReps_ContractHeaders_Xref