select
	 [MANDT] = concat(char(34), replace(cast([SER01].[MANDT] as nvarchar(3)), char(34), char(0)), char(34)),
	 [OBKNR] = cast([SER01].[OBKNR] as varchar(36)),
	 [LIEF_NR] = concat(char(34), replace(cast([SER01].[LIEF_NR] as nvarchar(10)), char(34), char(0)), char(34)),
	 [POSNR] = concat(char(34), replace(cast([SER01].[POSNR] as nvarchar(6)), char(34), char(0)), char(34)),
	 [DATUM] = concat(char(34), replace(cast([SER01].[DATUM] as nvarchar(8)), char(34), char(0)), char(34)),
	 [LETZNR] = concat(char(34), replace(cast([SER01].[LETZNR] as nvarchar(4)), char(34), char(0)), char(34)),
	 [KUNDE] = concat(char(34), replace(cast([SER01].[KUNDE] as nvarchar(10)), char(34), char(0)), char(34)),
	 [ANZSN] = cast([SER01].[ANZSN] as varchar(36)),
	 [VORGANG] = concat(char(34), replace(cast([SER01].[VORGANG] as nvarchar(4)), char(34), char(0)), char(34)),
	 [UZEIT] = concat(char(34), replace(cast([SER01].[UZEIT] as nvarchar(6)), char(34), char(0)), char(34)),
	 [VBTYP] = concat(char(34), replace(cast([SER01].[VBTYP] as nvarchar(1)), char(34), char(0)), char(34)),
	 [BWART] = concat(char(34), replace(cast([SER01].[BWART] as nvarchar(3)), char(34), char(0)), char(34)),
	 [VKORG] = concat(char(34), replace(cast([SER01].[VKORG] as nvarchar(4)), char(34), char(0)), char(34)),
	 [VTWEG] = concat(char(34), replace(cast([SER01].[VTWEG] as nvarchar(2)), char(34), char(0)), char(34)),
	 [SPART] = concat(char(34), replace(cast([SER01].[SPART] as nvarchar(2)), char(34), char(0)), char(34)),
	 [LTSPS] = concat(char(34), replace(cast([SER01].[LTSPS] as nvarchar(1)), char(34), char(0)), char(34))
from SAP_REPO.dbo.SER01 with(nolock)