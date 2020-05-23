select
	 [MANDT] = concat(char(34), replace(cast([T156T].[MANDT] as nvarchar(3)), char(34), char(0)), char(34)),
	 [SPRAS] = concat(char(34), replace(cast([T156T].[SPRAS] as nvarchar(1)), char(34), char(0)), char(34)),
	 [BWART] = concat(char(34), replace(cast([T156T].[BWART] as nvarchar(3)), char(34), char(0)), char(34)),
	 [SOBKZ] = concat(char(34), replace(cast([T156T].[SOBKZ] as nvarchar(1)), char(34), char(0)), char(34)),
	 [KZBEW] = concat(char(34), replace(cast([T156T].[KZBEW] as nvarchar(1)), char(34), char(0)), char(34)),
	 [KZZUG] = concat(char(34), replace(cast([T156T].[KZZUG] as nvarchar(1)), char(34), char(0)), char(34)),
	 [KZVBR] = concat(char(34), replace(cast([T156T].[KZVBR] as nvarchar(1)), char(34), char(0)), char(34)),
	 [BTEXT] = concat(char(34), replace(cast([T156T].[BTEXT] as nvarchar(20)), char(34), char(0)), char(34))
from SAP_REPO.dbo.T156T with(nolock)