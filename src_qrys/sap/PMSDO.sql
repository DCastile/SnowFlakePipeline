select
	 [MANDT] = quotename([PMSDO].[MANDT], char(34)),
	 [OBJNR] = quotename([PMSDO].[OBJNR], char(34)),
	 [VKORG] = quotename([PMSDO].[VKORG], char(34)),
	 [VTWEG] = quotename([PMSDO].[VTWEG], char(34)),
	 [SPART] = quotename([PMSDO].[SPART], char(34)),
	 [VKGRP] = quotename([PMSDO].[VKGRP], char(34)),
	 [VKBUR] = quotename([PMSDO].[VKBUR], char(34)),
	 [BSTKD] = quotename([PMSDO].[BSTKD], char(34)),
	 [BSTDK] = quotename([PMSDO].[BSTDK], char(34)),
	 [MATNR] = quotename([PMSDO].[MATNR], char(34)),
	 [MENGE] = quotename([PMSDO].[MENGE], char(34)),
	 [MEINS] = quotename([PMSDO].[MEINS], char(34)),
	 [CUOBJ] = quotename([PMSDO].[CUOBJ], char(34)),
	 [FFPRF] = quotename([PMSDO].[FFPRF], char(34)),
	 [FAKTF] = quotename([PMSDO].[FAKTF], char(34)),
	 [ETL_DATA_SOURCE] = quotename([PMSDO].[ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename([PMSDO].[ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = quotename([PMSDO].[ETL_LOAD_DATE], char(34))
from SAP_Production.dbo.PMSDO