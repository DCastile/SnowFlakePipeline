select
	 [MANDT] = concat(char(34), replace(cast([KSSK].[MANDT] as nvarchar(3)), char(34), char(0)), char(34)),
	 [OBJEK] = concat(char(34), replace(cast([KSSK].[OBJEK] as nvarchar(50)), char(34), char(0)), char(34)),
	 [MAFID] = concat(char(34), replace(cast([KSSK].[MAFID] as nvarchar(1)), char(34), char(0)), char(34)),
	 [KLART] = concat(char(34), replace(cast([KSSK].[KLART] as nvarchar(3)), char(34), char(0)), char(34)),
	 [CLINT] = concat(char(34), replace(cast([KSSK].[CLINT] as nvarchar(10)), char(34), char(0)), char(34)),
	 [ADZHL] = concat(char(34), replace(cast([KSSK].[ADZHL] as nvarchar(4)), char(34), char(0)), char(34)),
	 [ZAEHL] = cast([KSSK].[ZAEHL] as varchar(36)),
	 [STATU] = concat(char(34), replace(cast([KSSK].[STATU] as nvarchar(1)), char(34), char(0)), char(34)),
	 [STDCL] = concat(char(34), replace(cast([KSSK].[STDCL] as nvarchar(1)), char(34), char(0)), char(34)),
	 [REKRI] = concat(char(34), replace(cast([KSSK].[REKRI] as nvarchar(1)), char(34), char(0)), char(34)),
	 [AENNR] = concat(char(34), replace(cast([KSSK].[AENNR] as nvarchar(12)), char(34), char(0)), char(34)),
	 [DATUV] = concat(char(34), replace(cast([KSSK].[DATUV] as nvarchar(8)), char(34), char(0)), char(34)),
	 [LKENZ] = concat(char(34), replace(cast([KSSK].[LKENZ] as nvarchar(1)), char(34), char(0)), char(34))
from SAP_REPO.dbo.KSSK