select
	 [MANDT] = concat(char(34), replace(cast([PMSDO].[MANDT] as nvarchar(3)), char(34), char(0)), char(34)),
	 [OBJNR] = concat(char(34), replace(cast([PMSDO].[OBJNR] as nvarchar(22)), char(34), char(0)), char(34)),
	 [VKORG] = concat(char(34), replace(cast([PMSDO].[VKORG] as nvarchar(4)), char(34), char(0)), char(34)),
	 [VTWEG] = concat(char(34), replace(cast([PMSDO].[VTWEG] as nvarchar(2)), char(34), char(0)), char(34)),
	 [SPART] = concat(char(34), replace(cast([PMSDO].[SPART] as nvarchar(2)), char(34), char(0)), char(34)),
	 [VKGRP] = concat(char(34), replace(cast([PMSDO].[VKGRP] as nvarchar(3)), char(34), char(0)), char(34)),
	 [VKBUR] = concat(char(34), replace(cast([PMSDO].[VKBUR] as nvarchar(4)), char(34), char(0)), char(34)),
	 [BSTKD] = concat(char(34), replace(cast([PMSDO].[BSTKD] as nvarchar(35)), char(34), char(0)), char(34)),
	 [BSTDK] = concat(char(34), replace(cast([PMSDO].[BSTDK] as nvarchar(8)), char(34), char(0)), char(34)),
	 [MATNR] = concat(char(34), replace(cast([PMSDO].[MATNR] as nvarchar(18)), char(34), char(0)), char(34)),
	 [MENGE] = cast([PMSDO].[MENGE] as varchar(36)),
	 [MEINS] = concat(char(34), replace(cast([PMSDO].[MEINS] as nvarchar(3)), char(34), char(0)), char(34)),
	 [CUOBJ] = concat(char(34), replace(cast([PMSDO].[CUOBJ] as nvarchar(18)), char(34), char(0)), char(34)),
	 [FFPRF] = concat(char(34), replace(cast([PMSDO].[FFPRF] as nvarchar(8)), char(34), char(0)), char(34)),
	 [FAKTF] = concat(char(34), replace(cast([PMSDO].[FAKTF] as nvarchar(2)), char(34), char(0)), char(34))
from SAP_REPO.dbo.PMSDO with(nolock)