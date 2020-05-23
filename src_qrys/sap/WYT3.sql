select
	 [MANDT] = concat(char(34), replace(cast([WYT3].[MANDT] as nvarchar(3)), char(34), char(0)), char(34)),
	 [LIFNR] = concat(char(34), replace(cast([WYT3].[LIFNR] as nvarchar(10)), char(34), char(0)), char(34)),
	 [EKORG] = concat(char(34), replace(cast([WYT3].[EKORG] as nvarchar(4)), char(34), char(0)), char(34)),
	 [LTSNR] = concat(char(34), replace(cast([WYT3].[LTSNR] as nvarchar(6)), char(34), char(0)), char(34)),
	 [WERKS] = concat(char(34), replace(cast([WYT3].[WERKS] as nvarchar(4)), char(34), char(0)), char(34)),
	 [PARVW] = concat(char(34), replace(cast([WYT3].[PARVW] as nvarchar(2)), char(34), char(0)), char(34)),
	 [PARZA] = concat(char(34), replace(cast([WYT3].[PARZA] as nvarchar(3)), char(34), char(0)), char(34)),
	 [ERNAM] = concat(char(34), replace(cast([WYT3].[ERNAM] as nvarchar(12)), char(34), char(0)), char(34)),
	 [ERDAT] = concat(char(34), replace(cast([WYT3].[ERDAT] as nvarchar(8)), char(34), char(0)), char(34)),
	 [LIFN2] = concat(char(34), replace(cast([WYT3].[LIFN2] as nvarchar(10)), char(34), char(0)), char(34)),
	 [DEFPA] = concat(char(34), replace(cast([WYT3].[DEFPA] as nvarchar(1)), char(34), char(0)), char(34)),
	 [PERNR] = concat(char(34), replace(cast([WYT3].[PERNR] as nvarchar(8)), char(34), char(0)), char(34)),
	 [PARNR] = concat(char(34), replace(cast([WYT3].[PARNR] as nvarchar(10)), char(34), char(0)), char(34))
from SAP_REPO.dbo.WYT3