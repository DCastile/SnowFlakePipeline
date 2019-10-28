select
	 [MANDT] = quotename([MANDT], char(34)),
	 [OBKNR] = quotename([OBKNR], char(34)),
	 [LIEF_NR] = quotename([LIEF_NR], char(34)),
	 [POSNR] = quotename([POSNR], char(34)),
	 [DATUM] = quotename([DATUM], char(34)),
	 [LETZNR] = quotename([LETZNR], char(34)),
	 [KUNDE] = quotename([KUNDE], char(34)),
	 [ANZSN] = quotename([ANZSN], char(34)),
	 [VORGANG] = quotename([VORGANG], char(34)),
	 [UZEIT] = quotename([UZEIT], char(34)),
	 [VBTYP] = quotename([VBTYP], char(34)),
	 [BWART] = quotename([BWART], char(34)),
	 [VKORG] = quotename([VKORG], char(34)),
	 [VTWEG] = quotename([VTWEG], char(34)),
	 [SPART] = quotename([SPART], char(34)),
	 [LTSPS] = quotename([LTSPS], char(34))
from SAP_Production.dbo.SER01