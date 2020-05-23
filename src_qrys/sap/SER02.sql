select
	 [MANDT] = concat(char(34), replace(cast([SER02].[MANDT] as nvarchar(3)), char(34), char(0)), char(34)),
	 [OBKNR] = cast([SER02].[OBKNR] as varchar(36)),
	 [SDAUFNR] = concat(char(34), replace(cast([SER02].[SDAUFNR] as nvarchar(10)), char(34), char(0)), char(34)),
	 [POSNR] = concat(char(34), replace(cast([SER02].[POSNR] as nvarchar(6)), char(34), char(0)), char(34)),
	 [DATUM] = concat(char(34), replace(cast([SER02].[DATUM] as nvarchar(8)), char(34), char(0)), char(34)),
	 [LETZNR] = concat(char(34), replace(cast([SER02].[LETZNR] as nvarchar(4)), char(34), char(0)), char(34)),
	 [KUNDE] = concat(char(34), replace(cast([SER02].[KUNDE] as nvarchar(10)), char(34), char(0)), char(34)),
	 [ANZSN] = cast([SER02].[ANZSN] as varchar(36)),
	 [VORGANG] = concat(char(34), replace(cast([SER02].[VORGANG] as nvarchar(4)), char(34), char(0)), char(34)),
	 [VBTYP] = concat(char(34), replace(cast([SER02].[VBTYP] as nvarchar(1)), char(34), char(0)), char(34)),
	 [SD_AUART] = concat(char(34), replace(cast([SER02].[SD_AUART] as nvarchar(4)), char(34), char(0)), char(34)),
	 [SD_POSTYP] = concat(char(34), replace(cast([SER02].[SD_POSTYP] as nvarchar(4)), char(34), char(0)), char(34)),
	 [VKORG] = concat(char(34), replace(cast([SER02].[VKORG] as nvarchar(4)), char(34), char(0)), char(34)),
	 [VTWEG] = concat(char(34), replace(cast([SER02].[VTWEG] as nvarchar(2)), char(34), char(0)), char(34)),
	 [SPART] = concat(char(34), replace(cast([SER02].[SPART] as nvarchar(2)), char(34), char(0)), char(34)),
	 [LTSPS] = concat(char(34), replace(cast([SER02].[LTSPS] as nvarchar(1)), char(34), char(0)), char(34))
from SAP_REPO.dbo.SER02 with(nolock)