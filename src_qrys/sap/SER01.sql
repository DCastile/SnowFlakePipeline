select
	 [MANDT] = quotename([SER01].[MANDT], char(34)),
	 [OBKNR] = quotename([SER01].[OBKNR], char(34)),
	 [LIEF_NR] = quotename([SER01].[LIEF_NR], char(34)),
	 [POSNR] = quotename([SER01].[POSNR], char(34)),
	 [DATUM] = quotename([SER01].[DATUM], char(34)),
	 [LETZNR] = quotename([SER01].[LETZNR], char(34)),
	 [KUNDE] = quotename([SER01].[KUNDE], char(34)),
	 [ANZSN] = quotename([SER01].[ANZSN], char(34)),
	 [VORGANG] = quotename([SER01].[VORGANG], char(34)),
	 [UZEIT] = quotename([SER01].[UZEIT], char(34)),
	 [VBTYP] = quotename([SER01].[VBTYP], char(34)),
	 [BWART] = quotename([SER01].[BWART], char(34)),
	 [VKORG] = quotename([SER01].[VKORG], char(34)),
	 [VTWEG] = quotename([SER01].[VTWEG], char(34)),
	 [SPART] = quotename([SER01].[SPART], char(34)),
	 [LTSPS] = quotename([SER01].[LTSPS], char(34))
from SAP_Production.dbo.SER01