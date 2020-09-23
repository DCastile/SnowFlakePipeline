select
	 [MANDT] = concat(char(34), replace(cast([TBMOTX].[MANDT] as nvarchar(3)), char(34), char(0)), char(34)),
	 [SPRAS] = concat(char(34), replace(cast([TBMOTX].[SPRAS] as nvarchar(1)), char(34), char(0)), char(34)),
	 [BEMOT] = concat(char(34), replace(cast([TBMOTX].[BEMOT] as nvarchar(2)), char(34), char(0)), char(34)),
	 [BEMOT_TXT] = concat(char(34), replace(cast([TBMOTX].[BEMOT_TXT] as nvarchar(25)), char(34), char(0)), char(34))
from SAP_REPO.dbo.TBMOTX with(nolock)