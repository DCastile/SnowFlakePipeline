select
	 [MANDT] = concat(char(34), replace(cast([OBJK].[MANDT] as nvarchar(3)), char(34), char(0)), char(34)),
	 [OBKNR] = cast([OBJK].[OBKNR] as varchar(36)),
	 [OBZAE] = cast([OBJK].[OBZAE] as varchar(36)),
	 [EQUNR] = concat(char(34), replace(cast([OBJK].[EQUNR] as nvarchar(18)), char(34), char(0)), char(34)),
	 [IHNUM] = concat(char(34), replace(cast([OBJK].[IHNUM] as nvarchar(12)), char(34), char(0)), char(34)),
	 [BAUTL] = concat(char(34), replace(cast([OBJK].[BAUTL] as nvarchar(18)), char(34), char(0)), char(34)),
	 [ILOAN] = concat(char(34), replace(cast([OBJK].[ILOAN] as nvarchar(12)), char(34), char(0)), char(34)),
	 [SORTF] = concat(char(34), replace(cast([OBJK].[SORTF] as nvarchar(20)), char(34), char(0)), char(34)),
	 [BEARB] = concat(char(34), replace(cast([OBJK].[BEARB] as nvarchar(1)), char(34), char(0)), char(34)),
	 [OBJVW] = concat(char(34), replace(cast([OBJK].[OBJVW] as nvarchar(1)), char(34), char(0)), char(34)),
	 [SERNR] = concat(char(34), replace(cast([OBJK].[SERNR] as nvarchar(18)), char(34), char(0)), char(34)),
	 [MATNR] = concat(char(34), replace(cast([OBJK].[MATNR] as nvarchar(18)), char(34), char(0)), char(34)),
	 [DATUM] = concat(char(34), replace(cast([OBJK].[DATUM] as nvarchar(8)), char(34), char(0)), char(34)),
	 [EQSNR] = concat(char(34), replace(cast([OBJK].[EQSNR] as nvarchar(18)), char(34), char(0)), char(34)),
	 [TASER] = concat(char(34), replace(cast([OBJK].[TASER] as nvarchar(5)), char(34), char(0)), char(34)),
	 [UII] = concat(char(34), replace(cast([OBJK].[UII] as nvarchar(72)), char(34), char(0)), char(34))
from SAP_REPO.dbo.OBJK with(nolock)