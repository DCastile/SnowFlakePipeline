select
	 [MANDT] = concat(char(34), replace(cast([MAKT].[MANDT] as nvarchar(3)), char(34), char(0)), char(34)),
	 [MATNR] = concat(char(34), replace(cast([MAKT].[MATNR] as nvarchar(18)), char(34), char(0)), char(34)),
	 [SPRAS] = concat(char(34), replace(cast([MAKT].[SPRAS] as nvarchar(1)), char(34), char(0)), char(34)),
	 [MAKTX] = concat(char(34), replace(cast([MAKT].[MAKTX] as nvarchar(40)), char(34), char(0)), char(34)),
	 [MAKTG] = concat(char(34), replace(cast([MAKT].[MAKTG] as nvarchar(40)), char(34), char(0)), char(34))
from SAP_REPO.dbo.MAKT