select
	 [SPRAS] = concat(char(34), replace(cast([T002].[SPRAS] as nvarchar(1)), char(34), char(0)), char(34)),
	 [LASPEZ] = concat(char(34), replace(cast([T002].[LASPEZ] as nvarchar(1)), char(34), char(0)), char(34)),
	 [LAHQ] = concat(char(34), replace(cast([T002].[LAHQ] as nvarchar(1)), char(34), char(0)), char(34)),
	 [LAISO] = concat(char(34), replace(cast([T002].[LAISO] as nvarchar(2)), char(34), char(0)), char(34))
from SAP_REPO.dbo.T002 with(nolock)