select
	 [MANDT] = concat(char(34), replace(cast([EQKT].[MANDT] as nvarchar(3)), char(34), char(0)), char(34)),
	 [EQUNR] = concat(char(34), replace(cast([EQKT].[EQUNR] as nvarchar(18)), char(34), char(0)), char(34)),
	 [SPRAS] = concat(char(34), replace(cast([EQKT].[SPRAS] as nvarchar(1)), char(34), char(0)), char(34)),
	 [EQKTX] = concat(char(34), replace(cast([EQKT].[EQKTX] as nvarchar(40)), char(34), char(0)), char(34)),
	 [KZLTX] = concat(char(34), replace(cast([EQKT].[KZLTX] as nvarchar(1)), char(34), char(0)), char(34)),
	 [TXASP] = concat(char(34), replace(cast([EQKT].[TXASP] as nvarchar(1)), char(34), char(0)), char(34)),
	 [EQKTU] = concat(char(34), replace(cast([EQKT].[EQKTU] as nvarchar(40)), char(34), char(0)), char(34))
from SAP_REPO.dbo.EQKT