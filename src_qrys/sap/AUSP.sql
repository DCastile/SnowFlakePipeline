select
	 [MANDT] = concat(char(34), replace(cast([AUSP].[MANDT] as nvarchar(3)), char(34), char(0)), char(34)),
	 [OBJEK] = concat(char(34), replace(cast([AUSP].[OBJEK] as nvarchar(50)), char(34), char(0)), char(34)),
	 [ATINN] = concat(char(34), replace(cast([AUSP].[ATINN] as nvarchar(10)), char(34), char(0)), char(34)),
	 [ATZHL] = concat(char(34), replace(cast([AUSP].[ATZHL] as nvarchar(3)), char(34), char(0)), char(34)),
	 [MAFID] = concat(char(34), replace(cast([AUSP].[MAFID] as nvarchar(1)), char(34), char(0)), char(34)),
	 [KLART] = concat(char(34), replace(cast([AUSP].[KLART] as nvarchar(3)), char(34), char(0)), char(34)),
	 [ADZHL] = concat(char(34), replace(cast([AUSP].[ADZHL] as nvarchar(4)), char(34), char(0)), char(34)),
	 [ATWRT] = concat(char(34), replace(cast([AUSP].[ATWRT] as nvarchar(30)), char(34), char(0)), char(34)),
	 [ATFLV] = cast([AUSP].[ATFLV] as varchar(36)),
	 [ATAWE] = concat(char(34), replace(cast([AUSP].[ATAWE] as nvarchar(3)), char(34), char(0)), char(34)),
	 [ATFLB] = cast([AUSP].[ATFLB] as varchar(36)),
	 [ATAW1] = concat(char(34), replace(cast([AUSP].[ATAW1] as nvarchar(3)), char(34), char(0)), char(34)),
	 [ATCOD] = concat(char(34), replace(cast([AUSP].[ATCOD] as nvarchar(1)), char(34), char(0)), char(34)),
	 [ATTLV] = cast([AUSP].[ATTLV] as varchar(36)),
	 [ATTLB] = cast([AUSP].[ATTLB] as varchar(36)),
	 [ATPRZ] = concat(char(34), replace(cast([AUSP].[ATPRZ] as nvarchar(1)), char(34), char(0)), char(34)),
	 [ATINC] = cast([AUSP].[ATINC] as varchar(36)),
	 [ATAUT] = concat(char(34), replace(cast([AUSP].[ATAUT] as nvarchar(1)), char(34), char(0)), char(34)),
	 [AENNR] = concat(char(34), replace(cast([AUSP].[AENNR] as nvarchar(12)), char(34), char(0)), char(34)),
	 [DATUV] = concat(char(34), replace(cast([AUSP].[DATUV] as nvarchar(8)), char(34), char(0)), char(34)),
	 [LKENZ] = concat(char(34), replace(cast([AUSP].[LKENZ] as nvarchar(1)), char(34), char(0)), char(34)),
	 [ATIMB] = concat(char(34), replace(cast([AUSP].[ATIMB] as nvarchar(10)), char(34), char(0)), char(34)),
	 [ATZIS] = concat(char(34), replace(cast([AUSP].[ATZIS] as nvarchar(3)), char(34), char(0)), char(34)),
	 [ATSRT] = concat(char(34), replace(cast([AUSP].[ATSRT] as nvarchar(4)), char(34), char(0)), char(34)),
	 [ATVGLART] = concat(char(34), replace(cast([AUSP].[ATVGLART] as nvarchar(1)), char(34), char(0)), char(34))
from SAP_REPO.dbo.AUSP