select
	 [MANDT] = concat(char(34), replace(cast([INOB].[MANDT] as nvarchar(3)), char(34), char(0)), char(34)),
	 [CUOBJ] = concat(char(34), replace(cast([INOB].[CUOBJ] as nvarchar(18)), char(34), char(0)), char(34)),
	 [KLART] = concat(char(34), replace(cast([INOB].[KLART] as nvarchar(3)), char(34), char(0)), char(34)),
	 [OBTAB] = concat(char(34), replace(cast([INOB].[OBTAB] as nvarchar(30)), char(34), char(0)), char(34)),
	 [OBJEK] = concat(char(34), replace(cast([INOB].[OBJEK] as nvarchar(50)), char(34), char(0)), char(34)),
	 [ROBTAB] = concat(char(34), replace(cast([INOB].[ROBTAB] as nvarchar(30)), char(34), char(0)), char(34)),
	 [ROBJEK] = concat(char(34), replace(cast([INOB].[ROBJEK] as nvarchar(50)), char(34), char(0)), char(34)),
	 [CLINT] = concat(char(34), replace(cast([INOB].[CLINT] as nvarchar(10)), char(34), char(0)), char(34)),
	 [STATU] = concat(char(34), replace(cast([INOB].[STATU] as nvarchar(1)), char(34), char(0)), char(34)),
	 [CUCOZHL] = concat(char(34), replace(cast([INOB].[CUCOZHL] as nvarchar(4)), char(34), char(0)), char(34)),
	 [PARENT] = concat(char(34), replace(cast([INOB].[PARENT] as nvarchar(18)), char(34), char(0)), char(34)),
	 [ROOT] = concat(char(34), replace(cast([INOB].[ROOT] as nvarchar(18)), char(34), char(0)), char(34)),
	 [EXPERTE] = concat(char(34), replace(cast([INOB].[EXPERTE] as nvarchar(1)), char(34), char(0)), char(34)),
	 [MATNR] = concat(char(34), replace(cast([INOB].[MATNR] as nvarchar(18)), char(34), char(0)), char(34)),
	 [DATUV] = concat(char(34), replace(cast([INOB].[DATUV] as nvarchar(8)), char(34), char(0)), char(34)),
	 [TECHS] = concat(char(34), replace(cast([INOB].[TECHS] as nvarchar(12)), char(34), char(0)), char(34))
from SAP_REPO.dbo.INOB with(nolock)