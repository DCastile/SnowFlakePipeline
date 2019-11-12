select
	 [UserID] = concat(char(34), isNull(cast([SalesReps_ContractHeaders_Xref].[UserID] as nvarchar(max)), '\N'), char(34)),
	 [ContractHeaderID] = concat(char(34), isNull(cast([SalesReps_ContractHeaders_Xref].[ContractHeaderID] as nvarchar(max)), '\N'), char(34)),
	 [PrimaryFlag] = concat(char(34), isNull(cast([SalesReps_ContractHeaders_Xref].[PrimaryFlag] as nvarchar(max)), '\N'), char(34)),
	 [ChangedByID] = concat(char(34), isNull(cast([SalesReps_ContractHeaders_Xref].[ChangedByID] as nvarchar(max)), '\N'), char(34)),
	 [LastChanged] = isNull(convert(varchar(50), [SalesReps_ContractHeaders_Xref].[LastChanged], 21), '\N'),
	 [SalesRepID] = concat(char(34), isNull(cast([SalesReps_ContractHeaders_Xref].[SalesRepID] as nvarchar(max)), '\N'), char(34)),
	 [CreateDate] = isNull(convert(varchar(50), [SalesReps_ContractHeaders_Xref].[CreateDate], 21), '\N')
from SinglePoint.dbo.SalesReps_ContractHeaders_Xref