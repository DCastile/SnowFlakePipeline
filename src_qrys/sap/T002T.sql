select
	 [SPRAS] = concat(char(34), replace(cast([T002T].[SPRAS] as nvarchar(1)), char(34), char(0)), char(34)),
	 [SPRSL] = concat(char(34), replace(cast([T002T].[SPRSL] as nvarchar(1)), char(34), char(0)), char(34)),
	 [SPTXT] = concat(char(34), replace(cast([T002T].[SPTXT] as nvarchar(16)), char(34), char(0)), char(34))
from SAP_REPO.dbo.T002T with(nolock)