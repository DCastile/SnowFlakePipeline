select
	 [MANDT] = concat(char(34), replace(cast([KNVP].[MANDT] as nvarchar(3)), char(34), char(0)), char(34)),
	 [KUNNR] = concat(char(34), replace(cast([KNVP].[KUNNR] as nvarchar(10)), char(34), char(0)), char(34)),
	 [VKORG] = concat(char(34), replace(cast([KNVP].[VKORG] as nvarchar(4)), char(34), char(0)), char(34)),
	 [VTWEG] = concat(char(34), replace(cast([KNVP].[VTWEG] as nvarchar(2)), char(34), char(0)), char(34)),
	 [SPART] = concat(char(34), replace(cast([KNVP].[SPART] as nvarchar(2)), char(34), char(0)), char(34)),
	 [PARVW] = concat(char(34), replace(cast([KNVP].[PARVW] as nvarchar(2)), char(34), char(0)), char(34)),
	 [PARZA] = concat(char(34), replace(cast([KNVP].[PARZA] as nvarchar(3)), char(34), char(0)), char(34)),
	 [KUNN2] = concat(char(34), replace(cast([KNVP].[KUNN2] as nvarchar(10)), char(34), char(0)), char(34)),
	 [LIFNR] = concat(char(34), replace(cast([KNVP].[LIFNR] as nvarchar(10)), char(34), char(0)), char(34)),
	 [PERNR] = concat(char(34), replace(cast([KNVP].[PERNR] as nvarchar(8)), char(34), char(0)), char(34)),
	 [PARNR] = concat(char(34), replace(cast([KNVP].[PARNR] as nvarchar(10)), char(34), char(0)), char(34)),
	 [KNREF] = concat(char(34), replace(cast([KNVP].[KNREF] as nvarchar(30)), char(34), char(0)), char(34)),
	 [DEFPA] = concat(char(34), replace(cast([KNVP].[DEFPA] as nvarchar(1)), char(34), char(0)), char(34))
from SAP_REPO.dbo.KNVP